/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2026 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "FreeRTOS.h"
#include "cmsis_os2.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "app_touchgfx.h"
#include "keyboard.h"
#include "touch.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
extern ADC_HandleTypeDef hadc3;
extern DMA_HandleTypeDef hdma_adc3;
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */


uint16_t Voltage_in = 0;
/* USER CODE END Variables */
/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for myTouchGFX */
osThreadId_t myTouchGFXHandle;
const osThreadAttr_t myTouchGFX_attributes = {
  .name = "myTouchGFX",
  .stack_size = 10000 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for adcTask */
osThreadId_t adcTaskHandle;
const osThreadAttr_t adcTask_attributes = {
  .name = "adcTask",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityBelowNormal,
};
/* Definitions for tsTask */
osThreadId_t tsTaskHandle;
const osThreadAttr_t tsTask_attributes = {
  .name = "tsTask",
  .stack_size = 1000 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for adcQueue */
osMessageQueueId_t adcQueueHandle;
const osMessageQueueAttr_t adcQueue_attributes = {
  .name = "adcQueue"
};
/* Definitions for butQueue */
osMessageQueueId_t butQueueHandle;
const osMessageQueueAttr_t butQueue_attributes = {
  .name = "butQueue"
};
/* Definitions for ts_Touch */
osMessageQueueId_t ts_TouchHandle;
const osMessageQueueAttr_t ts_Touch_attributes = {
  .name = "ts_Touch"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);
void StartTGFXTask(void *argument);
void StartADCTask(void *argument);
void StartTS(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* Create the queue(s) */
  /* creation of adcQueue */
  adcQueueHandle = osMessageQueueNew (4, sizeof(uint16_t), &adcQueue_attributes);

  /* creation of butQueue */
  //butQueueHandle = osMessageQueueNew (8, sizeof(uint8_t), &butQueue_attributes);

  /* creation of ts_Touch */
  //ts_TouchHandle = osMessageQueueNew (12, sizeof(uint16_t), &ts_Touch_attributes);

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  butQueueHandle = osMessageQueueNew (8, sizeof(Msg_Button_State), &butQueue_attributes);
  ts_TouchHandle = osMessageQueueNew (12, sizeof(TS_StateTypeDef), &ts_Touch_attributes);
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of defaultTask */
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

  /* creation of myTouchGFX */
  myTouchGFXHandle = osThreadNew(StartTGFXTask, NULL, &myTouchGFX_attributes);

  /* creation of adcTask */
  adcTaskHandle = osThreadNew(StartADCTask, NULL, &adcTask_attributes);

  /* creation of tsTask */
  tsTaskHandle = osThreadNew(StartTS, NULL, &tsTask_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the defaultTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void *argument)
{
  /* USER CODE BEGIN StartDefaultTask */
  Msg_Button_State button;
  uint8_t count_rst=0;
  /* Infinite loop */
  for(;;)
  {
	  HAL_GPIO_TogglePin(LED3_GPIO_Port, LED3_Pin);
	  button.sw1 = HAL_GPIO_ReadPin(SW1_GPIO_Port,SW1_Pin);
	  button.sw4 = HAL_GPIO_ReadPin(SW4_GPIO_Port, SW4_Pin);
	  button.sw5 = HAL_GPIO_ReadPin(SW5_GPIO_Port, SW5_Pin);
	  button.sw8 = HAL_GPIO_ReadPin(SOFT_RST_GPIO_Port,SOFT_RST_Pin);
	  if(button.sw8)
	   {

		  if(++count_rst>10)
		   {
			  __NVIC_SystemReset();
		   }
	   }
	  else
	   {
		  count_rst=0;
	   }
	  osMessageQueuePut(butQueueHandle,&button,0,0);
	  osDelay(200);
  }
  /* USER CODE END StartDefaultTask */
}

/* USER CODE BEGIN Header_StartTGFXTask */
/**
* @brief Function implementing the myTouchGFX thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTGFXTask */
void StartTGFXTask(void *argument)
{
  /* USER CODE BEGIN StartTGFXTask */
	MX_TouchGFX_Process();
  /* Infinite loop */
  for(;;)
  {
    osDelay(50);
  }
  /* USER CODE END StartTGFXTask */
}

/* USER CODE BEGIN Header_StartADCTask */
/**
* @brief Function implementing the adcTask thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartADCTask */
void StartADCTask(void *argument)
{
  /* USER CODE BEGIN StartADCTask */
  /* Infinite loop */
  for(;;)
  {
	  HAL_ADC_Start(&hadc3);
	  HAL_ADC_PollForConversion(&hadc3,10);
	  uint16_t adcValue = HAL_ADC_GetValue(&hadc3);
	  HAL_ADC_Stop(&hadc3);
	  // 33V -- 4095
	  // Voltage_in -- adcValue
	  // adcValue*33 = Voltage_in*4095
	  // Voltage_in = adcValue*33/4095;
	  Voltage_in = adcValue*33/4095;
	  osMessageQueuePut(adcQueueHandle, &Voltage_in ,0 , 0);
	  osDelay(100);
  }
  /* USER CODE END StartADCTask */
}

/* USER CODE BEGIN Header_StartTS */
/**
* @brief Function implementing the tsTask thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartTS */
void StartTS(void *argument)
{
  /* USER CODE BEGIN StartTS */
	TS_StateTypeDef msg_ts;
  /* Infinite loop */
  for(;;)
  {
	  BSP_TS_GetState(&msg_ts);
	  if(msg_ts.touchDetected)
	   {
		  osMessageQueuePut(ts_TouchHandle,&msg_ts, 0, 0);
	   }
	  osDelay(100);
  }
  /* USER CODE END StartTS */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */


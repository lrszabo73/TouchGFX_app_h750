/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32h7xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define HEART_Pin GPIO_PIN_3
#define HEART_GPIO_Port GPIOE
#define SPI1_NSS_Pin GPIO_PIN_8
#define SPI1_NSS_GPIO_Port GPIOI
#define ENABLE_MICRO_Pin GPIO_PIN_1
#define ENABLE_MICRO_GPIO_Port GPIOC
#define RST_GNSS_Pin GPIO_PIN_4
#define RST_GNSS_GPIO_Port GPIOC
#define LCD_RST_Pin GPIO_PIN_6
#define LCD_RST_GPIO_Port GPIOH
#define LCD_BL_Pin GPIO_PIN_7
#define LCD_BL_GPIO_Port GPIOH
#define USD_DET_Pin GPIO_PIN_8
#define USD_DET_GPIO_Port GPIOH
#define FORCE_ON_Pin GPIO_PIN_9
#define FORCE_ON_GPIO_Port GPIOH
#define TS_INT_Pin GPIO_PIN_10
#define TS_INT_GPIO_Port GPIOH
#define JAM_DET_Pin GPIO_PIN_11
#define JAM_DET_GPIO_Port GPIOH
#define BUZZER_Pin GPIO_PIN_11
#define BUZZER_GPIO_Port GPIOD
#define LCD_DISP_Pin GPIO_PIN_12
#define LCD_DISP_GPIO_Port GPIOD
#define USB_OVCR_Pin GPIO_PIN_1
#define USB_OVCR_GPIO_Port GPIOI
#define LED3_Pin GPIO_PIN_3
#define LED3_GPIO_Port GPIOI
#define LED2_Pin GPIO_PIN_15
#define LED2_GPIO_Port GPIOA
#define LED1_Pin GPIO_PIN_3
#define LED1_GPIO_Port GPIOD
#define USB_PWR_EN_Pin GPIO_PIN_4
#define USB_PWR_EN_GPIO_Port GPIOD
#define POWER_EN_Pin GPIO_PIN_13
#define POWER_EN_GPIO_Port GPIOG
#define SW7_Pin GPIO_PIN_14
#define SW7_GPIO_Port GPIOG
#define SW6_Pin GPIO_PIN_3
#define SW6_GPIO_Port GPIOB
#define SW5_Pin GPIO_PIN_4
#define SW5_GPIO_Port GPIOB
#define SW4_Pin GPIO_PIN_5
#define SW4_GPIO_Port GPIOB
#define SW1_Pin GPIO_PIN_7
#define SW1_GPIO_Port GPIOI

/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

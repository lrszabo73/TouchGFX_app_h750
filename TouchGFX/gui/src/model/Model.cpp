#include <gui/model/Model.hpp>
#include <gui/model/ModelListener.hpp>
#include <cmsis_os2.h>
#include <main.h>
#include <keyboard.h>
#include <touch.h>
#ifndef SIMULATOR
extern "C"
{
	extern osMessageQueueId_t adcQueueHandle;
	extern osMessageQueueId_t butQueueHandle;
	extern osMessageQueueId_t ts_TouchHandle;
}

#endif
Model::Model() : modelListener(0), Voltage_in(30), Button_State_sw1(0), Button_State_sw4(0)
{

}

void Model::tick()
{

#ifndef SIMULATOR
	if(osMessageQueueGetCount(adcQueueHandle)>0)
	{
		if(osMessageQueueGet(adcQueueHandle, &Voltage_in, 0, 0) == osOK)
		{
			modelListener->setVoltage(Voltage_in);
		}
	}
	Msg_Button_State msg_button;
	TS_StateTypeDef msg_ts;
	if(osMessageQueueGet(butQueueHandle, &msg_button, 0, 0) == osOK)
	{
		if(msg_button.sw4==0) Button_State_sw4 = true;
		else Button_State_sw4 = false;
		modelListener->setBar(Button_State_sw4);

		if(msg_button.sw1==0) Button_State_sw1 = true;
		else Button_State_sw1 = false;
		modelListener->setScreen(Button_State_sw1);
	}

	if(osMessageQueueGet(ts_TouchHandle,&msg_ts, 0, 0) == osOK)
	{
		if(msg_ts.touchDetected==1)
		 {
			Touch_pressed = true;
			Touch_x[0]=(long)msg_ts.touchX[0];
			Touch_x[1]=(long)msg_ts.touchX[1];
			Touch_y[0]=((long)msg_ts.touchY[0]+316);
			Touch_y[1]=((long)msg_ts.touchY[1]+316);
			modelListener->showCursor( Touch_x, Touch_y);
		 }
		else Touch_pressed = false;
		//modelListener->setScreen(Touch_pressed);
	}
#endif
}



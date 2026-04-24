#include <gui/model/Model.hpp>
#include <gui/model/ModelListener.hpp>
#include <cmsis_os2.h>
#include <main.h>
#include <keyboard.h>
#ifndef SIMULATOR
extern "C"
{
	extern osMessageQueueId_t adcQueueHandle;
	extern osMessageQueueId_t butQueueHandle;
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
	if(osMessageQueueGet(butQueueHandle, &msg_button, 0, 0) == osOK)
	{
		if(msg_button.sw4==0) Button_State_sw4 = true;
		else Button_State_sw4 = false;
		modelListener->setBar(Button_State_sw4);

		if(msg_button.sw1==0) Button_State_sw1 = true;
		else Button_State_sw1 = false;
		modelListener->setScreen(Button_State_sw1);
	}
#endif
}

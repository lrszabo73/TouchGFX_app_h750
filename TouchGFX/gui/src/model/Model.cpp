#include <gui/model/Model.hpp>
#include <gui/model/ModelListener.hpp>
#include <cmsis_os2.h>
#include <main.h>
#ifndef SIMULATOR
extern "C"
{
	extern osMessageQueueId_t adcQueueHandle;
	extern osMessageQueueId_t butQueueHandle;
}

#endif
Model::Model() : modelListener(0), Voltage_in(30), Button_State(false)
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
	static bool button1;
	if(osMessageQueueGet(butQueueHandle, &button1, 0, 0) == osOK)
	{
		if(button1==0) Button_State = true;
		else Button_State = false;
		modelListener->setBar(Button_State);
	}
#endif
}

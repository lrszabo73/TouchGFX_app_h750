#include <gui/screen2_screen/Screen2View.hpp>
#include <stdio.h>
#include <string.h>

Screen2View::Screen2View()
{

}

void Screen2View::setupScreen()
{
    Screen2ViewBase::setupScreen();
}

void Screen2View::tearDownScreen()
{
    Screen2ViewBase::tearDownScreen();
}

void Screen2View::setVoltage(unsigned int Voltage)
{
	gauge1.setValue(Voltage);
	gauge1.invalidate();
}

void Screen2View::setBar(bool state)
{
	if(state==true)
	 {
		textProgress1.setValue(percentage);
		textProgress1.invalidate();
		imageProgress1.setValue(percentage);
		imageProgress1.invalidate();

		if(percentage<100)
			percentage++;
		else
			percentage=0;

	 }
}

void Screen2View::showCursor(long *touch_x,long *touch_y )
 {
	 Unicode::snprintf(text_tx1Buffer, TEXT_TX1_SIZE, "%d",touch_x[0]);
	 Unicode::snprintf(text_tx2Buffer, TEXT_TX2_SIZE, "%d",touch_x[1]);
	 Unicode::snprintf(text_ty1Buffer, TEXT_TY1_SIZE, "%d",touch_y[0]);
	 Unicode::snprintf(text_ty2Buffer, TEXT_TY2_SIZE, "%d",touch_y[1]);
	 text_tx1.invalidate();
	 text_tx2.invalidate();
	 text_ty1.invalidate();
	 text_ty2.invalidate();


 }

void Screen2View::setScreen(bool state)
{
	if(state)setScreen4();
}

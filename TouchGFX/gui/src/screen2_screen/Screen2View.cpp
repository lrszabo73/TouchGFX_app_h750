#include <gui/screen2_screen/Screen2View.hpp>

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

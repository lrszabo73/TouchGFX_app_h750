#include <gui/screen2_screen/Screen2View.hpp>
#include <gui/screen2_screen/Screen2Presenter.hpp>

Screen2Presenter::Screen2Presenter(Screen2View& v)
    : view(v)
{

}

void Screen2Presenter::activate()
{

}

void Screen2Presenter::deactivate()
{

}

void Screen2Presenter::setVoltage(unsigned int Voltage)
{
	view.setVoltage(Voltage);
}

void Screen2Presenter::setBar(bool state)
{
	view.setBar(state);
}

void Screen2Presenter::setScreen(bool state)
{
	view.setScreen(state);
}


void Screen2Presenter::showCursor(long *touch_x,long *touch_y)
{
	view.showCursor(touch_x,touch_y);
}

#include <gui/screen1_screen/Screen1View.hpp>

Screen1View::Screen1View()
{

}

void Screen1View::setupScreen()
{
    Screen1ViewBase::setupScreen();
}

void Screen1View::tearDownScreen()
{
    Screen1ViewBase::tearDownScreen();
}

void Screen1View::handleTickEvent()
{
	circleProgress1.setValue(tickCounter);
	circleProgress1.invalidate();
	if(++tickCounter>=100)
	 {
		tickCounter=0;
		screenChange();
	 }
}

void Screen1View::screenChange()
{
	application().gotoScreen5ScreenSlideTransitionEast();
}

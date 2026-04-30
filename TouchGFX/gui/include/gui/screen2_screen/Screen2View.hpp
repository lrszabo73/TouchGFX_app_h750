#ifndef SCREEN2VIEW_HPP
#define SCREEN2VIEW_HPP

#include <gui_generated/screen2_screen/Screen2ViewBase.hpp>
#include <gui/screen2_screen/Screen2Presenter.hpp>

class Screen2View : public Screen2ViewBase
{
public:
    uint8_t percentage = 0;
    char *coordinate;
    Screen2View();
    virtual ~Screen2View() {}
    virtual void setupScreen();
    virtual void tearDownScreen();
    virtual void setVoltage(unsigned int Voltage);
    virtual void setBar(bool state);
    virtual void setScreen (bool state);
    virtual void showCursor(long *touch_x,long *touch_y );
protected:
};

#endif // SCREEN2VIEW_HPP

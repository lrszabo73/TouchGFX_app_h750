#ifndef MODELLISTENER_HPP
#define MODELLISTENER_HPP

#include <gui/model/Model.hpp>

class ModelListener
{
public:
    ModelListener() : model(0) {}
    
    virtual ~ModelListener() {}

    void bind(Model* m)
    {
        model = m;
    }
    virtual void setVoltage( unsigned int Voltage) {}
    virtual void setBar(bool state) {}
    virtual void setScreen (bool state) {}
    virtual void showCursor(long *touch_x,long *touch_y) {}

protected:
    Model* model;
};

#endif // MODELLISTENER_HPP

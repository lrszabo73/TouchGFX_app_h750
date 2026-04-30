#ifndef MODEL_HPP
#define MODEL_HPP

class ModelListener;

class Model
{
public:
    Model();

    void bind(ModelListener* listener)
    {
        modelListener = listener;
    }

    void tick();

protected:
    ModelListener* modelListener;
    bool Button_State_sw1;
    bool Button_State_sw4;
    bool Button_State_sw5;
    bool Button_State_sw6;
    bool Button_State_sw7;
    unsigned int Voltage_in;
    bool Touch_pressed;
    long Touch_x[2];
    long Touch_y[2];

};

#endif // MODEL_HPP

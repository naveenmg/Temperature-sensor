#include "mbed.h"

Ticker flipper;
AnalogIn analog_value(A0);
 
DigitalOut led(LED1);
Serial pc(SERIAL_TX, SERIAL_RX);

void mess() {
    float meas;
    float volt;
    
    while(1) {
        meas = analog_value.read(); 
        volt = meas * 3300; 
        pc.printf("%.0f\n", volt);
    }
}

int main() 
{
 flipper.attach(&mess, 0.01);
    while(1) {
        led = !led;
    }
}


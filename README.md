# Temperature-sensor
Making a temperature sensor using a NTC.

The housing is designed to hold the ntc chip and the circuit board. 
It is desiged on onshape and 3D printed. 
The connection are soldered and connected across to the STM32F44RE board to read the voltage vaules on the UART port with the help of the code run on mbed complier.
The sensor is then calibrated to the actual temperature. 
After calibration a different code is run on the board to output the actual temperature readings realtime.

The realtime temperature readings for a range of temperature is plotted in MATLAB  to obtain the characteristic graph of the NTC chip.

https://www.behance.net/gallery/81069003/Temperature-Sensor

clear all;
close all;
z=1;
while(z <= 10)
s = serial('COM6','Baudrate',9600);
fopen(s)
voltage = 0;
t = 0;
y = 1;
while(t <= 9)
    voltage = fscanf(s);
    VoltageValue(y,1)= str2double(voltage);
    t = t+1;
    y = y+1;
end
fclose(s)
b=1;
for a=2:10 
    wert(b)= VoltageValue(a);
   b=b+1;
end
V = mean(wert) %mV
R1=10; %kOhm
U0= 3300; %mV
y=1;
for kk=1:9
    Umess = wert(y);
    Rx(y)=((R1*U0)/(Umess))-R1;  %kOhm
    y = y+1;
end
Volt = mean(Umess) 
R = mean(Rx)    %kOhm
R0 = 10.65;     %kOhm
T0 = 25+273.15; %K
B = 3550;
T= B/((log(R/R0))+(B/T0));
actualT = T - 273.15
x(z)=[actualT];
yy(z)=[z]./10;
r(z)=[R];
voolt(z)=[Volt];
z= z+1;
end
t=yy/60;
plot(t,x);
xlabel('Zeit(t)');
ylabel('Temp(C)');

figure();
plot(x,r);
xlabel('Temp(C)');
ylabel('Resistance(kOhm)');

figure();
subplot(2,1,1);
plot(x,voolt);
xlabel('Temp(C)');
ylabel('Voltage(mV)');
axis([0 100 0 3300]);
grid on;
P=polyfit(x,voolt,2);
U1=polyval(P,x);
subplot(2,1,2);
plot(x,U1,'r');
xlabel('Temp. C');
ylabel('mV');
axis([0 100 0 3300]);
grid on;
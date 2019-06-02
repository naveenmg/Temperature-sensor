clear all;
close all;
B=3550;  %K
R0=10.65;  %kOhm bei 25
T0=273.15+25; %K
T=[0:0.5:100];
Tk=T+273.15;
R=R0*exp(B*((1./Tk)-(1/T0)));
figure 
plot(T, R,'r','linewidth',2);
xlabel('Temp. C');
ylabel('Ohm');
grid on;
U0=3300; %mV
Rs=10; %kOhm
Umess = U0 *(Rs./(Rs+R));
figure
plot(T,Umess,'linewidth',2);
xlabel('Temp. C');
ylabel('V');
grid on;
P=polyfit(T,Umess,2);
U1=polyval(P,T);
figure
plot(T,U1,'r',T,Umess,'b');
xlabel('Temp. C');
ylabel('V');
grid on;


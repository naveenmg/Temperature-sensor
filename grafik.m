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
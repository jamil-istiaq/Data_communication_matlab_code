A1=87;
A2=11;
t=0:pi/100:2*pi;
x1=A1*cos(2*pi*(3*100)*t);
x2=A2*cos(2*pi*(1*100)*t);
plot(t,x1,'k','linewidth',2);
hold on;
plot(t,x2,'b','linewidth',2);
hold on;
xlabel('time in seconds')
ylabel('Amplitude in volts')
title('Signals of different Frequencies')

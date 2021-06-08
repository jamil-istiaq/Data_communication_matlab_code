A1=87;
A2=11;
t=-2*pi:pi/20:2*pi-pi/20;
x1=A1*cos(2*pi*(3*100)*t);
x2=A2*cos(2*pi*(1*100)*t);
x3=x1+x2;
plot(t,x3,'b','linewidth',1.5);
hold on;
xlabel('time in seconds')
ylabel('Amplitude in volts')

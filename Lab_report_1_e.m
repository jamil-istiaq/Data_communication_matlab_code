A1=18;
A2=82;
j1=79*(pi/180);
j2=89*(pi/180);
t=-2*pi:pi/40:2*pi-pi/40;
x1=A1*cos(2*pi*3791*t+j1);
x2=A2*cos(2*pi*3791*t+j2);
x3=x1+x2;
subplot(3,1,1)
plot(t,x1,'b')
xlabel("time (sec)")
ylabel("Amplitude")
title("x1(t)")
subplot(3,1,2)
plot(t,x2,'r')
xlabel("time (sec)")
ylabel("Amplitude")
title("x2(t)")
subplot(3,1,3)
plot(t,x3,'g')
xlabel("time (sec)")
ylabel("Amplitude")
title("x3(t)=x1(t)+x2(t)")

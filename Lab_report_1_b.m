A1=18;
A2=82;
j1=79*(pi/180);
j2=89*(pi/180);
t=-2*pi:pi/20:2*pi-pi/20;
x1=A1*cos(2*pi*3791*t+j1);
x2=A2*cos(2*pi*3791*t+j2);
plot(t,x1,t,x2)
title("(b)")
xlabel("time (sec)")
ylabel("Amplitude")

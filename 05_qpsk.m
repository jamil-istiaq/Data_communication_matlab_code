close all;
clc;
f=10;
x=[0 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1 0 0 1 1 0 0 0 1];
x = reshape(x,2,[])
x1=x(1:2:end,:)
x2=x(2:2:end,:)
nx=size(x,2);
i=1;
while i<nx+1
t = i:0.001:i+1;
if x1(i)==1
psk1=sin(2*pi*f*t);
psk2=sin(2*pi*f*t+pi+pi/2);
else
psk1=sin(2*pi*f*t+pi);
psk2=sin(2*pi*f*t+pi+pi/2);
end
QPSK = psk1+psk2;
subplot(3,1,1);
plot(t,psk1);
hold on;
grid on;
axis([1 4 -1 1]);
title('PSK1')
subplot(3,1,2);
plot(t,psk2);
hold on;
grid on;
axis([1 4 -1 1]);
title('PSK2')
subplot(3,1,3);
plot(t,QPSK);
hold on;
grid on;
axis([1 4 -2 2]);
title('QPSK')
i=i+1;
end
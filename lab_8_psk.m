clc;
clear all;
close all;
y = 'test.jpg';
x=img2bn(y);
z = reshape(x,1,[]);
f=1837;
nx=size(z,2);
i=1;
while i<nx+1
t = i:0.01:i+1;
if z(i)==1
psk=sin(2*pi*f*t);
else
ask=0;
psk=sin(2*pi*f*t+pi);
end
subplot(1,1,1);
plot(t,psk);
hold on;
grid on;
axis([1 10 -1 1]);
title('Binary Phase Shift Key')
i=i+1;
end
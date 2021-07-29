clc;
clear all;
close all;
Transmitted_Message= 'Name: Md. Jamil Istiaq Id: 18-37918-2'
y = asc2bn(Transmitted_Message);
z = reshape(y,1,[]);
A=12; % AH amplitude
f=1837; % ABCD frequency
nx=size(z,2);
i=1;
while i<nx+1
t = i:0.01:i+1;
if z(i)==1
psk=A*sin(2*pi*f*t);
else
psk=A*sin(2*pi*f*t+pi);
end
subplot(4,1,1);
plot(t,psk);
hold on;
grid on;
axis([1 10 -1 1]);
title('Binary Phase Shift Key (Modulation)')
i=i+1;
end

A=12;
f=1837;
Transmitted_Message= 'Name: Md. Jamil Istiaq Id: 18-37918-2'
y = asc2bn(Transmitted_Message);
x = reshape(y,2,[])
x1=x(1:2:end,:)
x2=x(2:2:end,:)
nx=size(x,2);
i=1;
while i<nx+1
t = i:0.01:i+1;
if x1(i)==1
psk1=sin(2*pi*f*t);
psk2=sin(2*pi*f*t+pi+pi/2);
else
psk1=sin(2*pi*f*t+pi);
psk2=sin(2*pi*f*t+pi+pi/2);
end
QPSK = psk1+psk2;
subplot(4,1,2);
plot(t,psk1);
hold on;
grid on;
axis([1 4 -1 1]);
title('PSK1 (Modulation)')
subplot(4,1,3);
plot(t,psk2);
hold on;
grid on;
axis([1 4 -1 1]);
title('PSK2 (Modulation)')
subplot(4,1,4);
plot(t,QPSK);
hold on;
grid on;
axis([1 4 -2 2]);
title('QPSK (Modulation)')
i=i+1;
end
x=2*sin(2*pi*20*t)+0.4*cos(2*pi*100*t)+0.1*sin(2*pi*500*t)+0.05*randn(size(t))
n=6;
L=(2^n)-1;
delta=(max(x)-min(x))/L;
xq=min(x)+(round((x-min(x))/delta)).*delta;
subplot(2,1,1)
stem(t,x,'K');
subplot(2,1,2);
stem(t,x,'b');
xlabel('time(s)')
ylabel('X[n]')
subplot(2,1,2);
stairs(t,xq,'b');% the quantized output
title('Quantized Signal')% title of the figure
xlabel('time')% label on the x-axis of the plot
ylabel('amplitude')% label on the y-axis of the plot
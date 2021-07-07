close all;
clc;
fs = 8000;
t = 0:1/fs:1-1/fs;
signal = 2*sin(2*pi*20*t)+0.4*cos(2*pi*100*t)+0.1*sin(2*pi*500*t)+0.05*randn(size(t))

plot(t, signal);
title('Time-Domain signal');
xlabel('Time (s)');
ylabel('amplitude');

SNR = snr(signal);
bandwidth = obw(signal,fs);
C = bandwidth*log2(1+SNR) 
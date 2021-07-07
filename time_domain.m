close all;
clc;
fs = 8000;
t = 0:1/fs:1-1/fs;
signal = 2*sin(2*pi*20*t)+0.4*cos(2*pi*100*t)+0.1*sin(2*pi*500*t)+0.05*randn(size(t))

plot(t, signal);
title('Time-Domain signal');
xlabel('Time (s)');
ylabel('amplitude');

fftSignal = fft(signal);
fftSignal = fftshift(fftSignal)/(fs/2);
f = fs/2*linspace(-1,1,fs);
figure;

plot(f, abs(fftSignal));
axis([-1000 1000 -0.2 2.2]);
title('magnitude FFT of sine');
xlabel('Frequency (Hz)');
ylabel('magnitude');
close all;
clc;
%Define number of samples to take
fs = 8000; % Sampling frequency
%Define signal
t = 0:1/fs:1-1/fs;
A = 1.5;
powfund = A^2/2;
s = 0.13;
varnoise = s^2;
signal = A*sin(2*pi*2*t)+0.9*cos(2*pi*10*t)+1.1*sin(2*pi*20*t);
%noise
noise = s*randn(size(t));
%noisy signal
noisySignal = signal + noise;
SNR = snr(noisySignal) %Calculation of SNR using snr function

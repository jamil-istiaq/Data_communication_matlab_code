close all;
clc;
fs = 8000; % Sampling frequency
t = 0:1/fs:1-1/fs; % Time duration
cx=1.5*sin(2*pi*2*t)+0.9*cos(2*pi*10*t)+1.1*sin(2*pi*20*t);
bandwidth = obw(cx,fs); % Bandwidth of the signal
L=2; % Level of the signal
BitRate = 2*bandwidth*log2(L)
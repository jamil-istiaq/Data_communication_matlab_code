fs = 48e3;
t = 0:1/fs:1-1/fs;
A = 1.5;
a = 0.9;
b = 1.1;
s = 0.13;

x = 1.5*cos(2*pi*2*t) + a*cos(2*pi*10*t)+ b*sin(2*pi*20*t) + s*randn(size(t));
THD = thd(x); % Total harmonic distortion
TH = [THD]
SINAD = sinad(x); % Signal to noise and distortion ratio
SI = [SINAD]

SNR = snr(x);
bandwidth = obw(x,fs); % Bandwidth of the signal
C = bandwidth*log2(1+SNR) % Capacity of the channel
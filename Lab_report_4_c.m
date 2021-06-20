A1=18;
A2=11;
s=12;
fs=4000;
t = 0:1/fs:1-1/fs;
C=3;
G=8;
signal = A1*sin(2*pi*(C*100)*t) + A2*cos(2*pi*(G*100)*t);
noise= s*randn(size(t));
noisySignal=signal+noise;
SNR=snr ( noisySignal)
bandwidth = obw(signal,fs)
capacity=bandwidth*log2(1+SNR)


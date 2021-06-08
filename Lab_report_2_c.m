fs = 1000;
t = 0:1/fs:1-1/fs;
f1 = 300;
f2 = 100;
A1 = 87;
A2 = 11;
x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t);
x3= x1+x2;
fx3 = fft(x3);
fx3 = fftshift(fx3)/(fs/2);
f = fs/2*linspace(-1,1,fs);
figure;
plot(f,abs(fx3),'LineWidth',1.5);
title('magnitude FFT of sine');
axis([-500 500 0 90])
xlabel('Frequency (Hz)');
ylabel('magnitude');
bandwidth = obw(x3,fs)

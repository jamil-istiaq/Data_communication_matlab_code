SNR = snr(signal);
bandwidth = obw(signal,fs);
C = bandwidth*log2(1+SNR) 
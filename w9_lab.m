clc;
clear all;
close all;
Transmitted_Message= 'Red'
%Converting Information Message to bit%
x=asc2bn(Transmitted_Message); % Binary Information
bp=.000001; % bit period
disp(' Binary information at Trans mitter :');
disp(x);

bit=[];
for n=1:1:length(x)
if x(n)==1;
se=5*ones(1,100);
else x(n)==0;
se=zeros(1,100);
end
bit=[bit se];
end
t1=bp/100:bp/100:100*length(x)*(bp/100);
subplot(4,1,1);
plot(t1,bit,'lineWidth',2.5);grid on;
axis([ 0 bp*length(x) -.5 6]);

ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('Transmitting information as digital signal');

A1=5; % Amplitude of carrier signal for information 1
A2=0; % Amplitude of carrier signal for information 0
br=1/bp; % bit rate
f=br*10; % carrier frequency
t2=bp/99:bp/99:bp;
ss=length(t2);
m=[];
for (i=1:1:length(x))
if (x(i)==1)
y=A1*cos(2*pi*f*t2);
else
y=A2*cos(2*pi*f*t2);
end
m=[m y];
end
t3=bp/99:bp/99:bp*length(x);
subplot(4,1,2);
plot(t3,m);
axis([ 0 bp*length(x) -6 6]);
xlabel('time(sec)');
ylabel('amplitude(volt)');
title('Modulated Signal at Transmitter');




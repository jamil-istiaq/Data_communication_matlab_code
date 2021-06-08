A1=87;
A2=11;
fs=40000;
t=0:5/fs:5-5/fs;
x1=87*cos(2*pi*(379*100)*t);
n=4;
L=(2^n)-1;
delta= (max(x1)-min(x1))/L

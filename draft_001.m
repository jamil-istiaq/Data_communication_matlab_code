(I)
filename = 'flamingos.jpg';
img = imread(filename);
if ndims(img) > 2
   img = rgb2gray(img);
end
img = imresize(img, [100 100]);
%img is now 100 x 100 grayscale
BW = imbinarize(img);
as_bits = double(BW) 

(II)
fs = 100; % Sampling Rate
ts = 1/fs; % Sampling Period
t = linspace(0, 0.1, 101);
t = t(1:end-1);
a= 200;
b= 300;
f_1 = sin(2*pi*a*t)+sin(2*pi*b*t); % function f_1(t)
figure(1)
plot(t,f_1);

(III)
a.
function dn = asc2bn(txt) 
dec=double(txt) %Text to ASCII (decimal)
p2=2.^(0:-1:-7) % 2^0,2^-1,.......,2^-7
B=mod(floor(p2'*dec),2) %Decimal to binary conversion %Columns of B are bits of chars
dn=reshape(B,1,numel(B));%Bytes to serial conversion
disp(txt);
end
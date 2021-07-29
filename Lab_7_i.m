clc;
clear all;
close all;
Transmitted_Message= 'Name: Md. Jamil Istiaq Id: 18-37918-2';
x=asc2bn(Transmitted_Message); % Binary Information
bp=.000001; % bit period
disp(' Binary information at Trans miter :');
disp(x);

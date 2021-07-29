Transmitted_Message= 'Name: Md. Jamil Istiaq Id: 18-37918-2'
y = asc2bn(Transmitted_Message);
x=y;
z = reshape(x,1,[]);
y=[]; %New array to store bits with start and stop bit for asynchronous transmission
y(1)=1;
leny=length (x)+((length (z)/10)*2); %Length of New array y
c=1; %counter to count every 10 bit
j=1; % index number of array x
for i=2:1:leny
if c==10
y(i)=0;
c=c+1;
elseif c==11;
y(i)=1;
c=1;
else
y(i)=x(j);
j=j+1;
c=c+1;
end
end
 
bit=[];
for n=1:1:length(y)
if y(n)==1;
se=5*ones(1,100);
else y(n)==0;
se=zeros(1,100);
end
bit=[bit se];
end
t1=bp/100:bp/100:100*length(y)*(bp/100);
plot(t1,bit,'lineWidth',2.5);
grid on;
axis([ 0 0.005*length(y) -.5 6]);
ylabel('amplitude(volt)');
xlabel(' time(sec)');
title('Transmitting information as Asynchronus digital signal');


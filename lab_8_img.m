y = 'test.jpg';
x=img2bn(y);
z=bi2gray(x);
[m n r]=size(z);
rgb=zeros(m,n,3)
rgb(:,:,1)=z;
rgb(:,:,2)=rgb(:,:,1);
rgb(:,:,3)=rgb(:,:,1);
z=rgb/255;
display(z);


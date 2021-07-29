function i2b = img2bn(txt)
%filename = 'test.jpg';
img = imread(txt);
if ndims(img) > 2
   img = rgb2gray(img);
   img = imresize(img, [100 100]);
   i2b = imbinarize(img);
end



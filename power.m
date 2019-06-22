clear all
a=imread('sunflower2.jpg');
a=rgb2gray(a);
gamma=1.1;
d=double(a).^gamma;
%imshow(a),title('original image');
Figure,imshow(unit8(d)),title('Powerlaw transformation');

f=imread('C:\Users\user\Desktop\Test_images\lena.bmp');
f=imresize(f,0.5)
subplot(2,3,1)
imshow(f);
title('original img');
g=rgb2gray(f);
subplot(2,3,2);
imshow(g)
title('gray image')
c=45;
h=uint8(c*log(double(1+g)));
subplot(2,3,5);
imshow(h);
logtext=sprintf('logarithmic op c=%2.1f',c);
title(logtext);

f=imread('C:\Users\user\Desktop\Test_images\new1.jpg');
f=imresize(f,0.5)
subplot(2,3,1)
imshow(f);
title('original img');
g=rgb2gray(f);
subplot(2,3,2);
imshow(g)
title('gray image')
c=1;
ga=1.0;
i=uint8(c.*((double(g)).^ga));
subplot(2,3,6);
imshow(i);
powtext=sprintf('power law operator for c=%2.1f and gama=%0.2f',c,ga);
title('powtext');

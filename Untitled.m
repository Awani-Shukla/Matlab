a=imread('C:\Users\user\Desktop\Test_images\baloon1.jpg');
%figure
%subplot(1,2,1)
%imshow(a)
%title('img1')
%b=imresize(a,0.40)
%subplot(1,2,2)
%imshow(b)
%title('img b')
%figure
c=rgb2gray(b)
%figure
%imshow(c)
%title('img2')
%[M N]=size(b)
g=im2bw(c)
%figure
%imshow(g)
%title('img3')
%[J K]=size(g)
%imwrite(g,'C:\Users\user\Desktop\new.jpg','quality',90)
 %
 
% %  bi=im2bw(a);
% %  subplot(1,2,1)
% %  imshow(bi)
% % title('1')
% % 
% % bi=gray>100;
% % subplot(1,2,2)
% imshow(bi)
% title('2')
% gr=imr*0.33+img*0.34+imb*0.33;
% subplot(2,3,5)
% 
% imshow(gr)
% title('5')

imb=a;
imb(:,:,1:2)=0;
subplot(1,3,1)
imshow(imb);
title('1');
img=a;
img(:,:,1:2:3)=0;
subplot(1,3,2)
imshow(img);
title('2');
imr=a;
imr(:,:,2:3)=0;
subplot(1,3,3)
imshow(imr);
title('3');

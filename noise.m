a=imread('C:\Users\user\Desktop\Test_images\lenna.jpg');

x=imresize(a,[256 256])
subplot(3,3,1)
imshow(x);

s=imnoise(x,'gaussian',0,0.01);
subplot(3,3,2)
imshow(s);
title('gau');
subplot(3,3,3)
imhist(s)

sa=imnoise(x,'salt & pepper',0.02);
subplot(3,3,4)
imshow(sa)
title('sa')
subplot(3,3,5)
imhist(sa);

sp=imnoise(x,'speckle')
subplot(3,3,6)
imshow(sp)
title('speckle')
subplot(3,3,7)
imhist(sp)



p=imnoise(x,'poisson')
subplot(3,3,8)
imshow(p)
title('poisson');
subplot(3,3,9)
imhist(p)






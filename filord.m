a=imread('C:\Users\user\Desktop\Test_images\lenna.jpg');

x=imresize(a,[256 256])
subplot(3,3,1)
imshow(x);

filt1=ordfilt2(x,1,ones(11,11));
subplot(3,3,2)
imshow(filt1)
title('min')

filt2=ordfilt2(x,81,ones(9,9));
subplot(3,3,3)
imshow(filt2)
title('max')

filt3=ordfilt2(x,40,ones(11,11));
subplot(3,3,4)
imshow(filt3)
title('mid')

sa=imnoise(x,'salt & pepper',0.2);
subplot(3,3,5)
imshow(sa)
title('sa')

filt4=ordfilt2(x,5,ones(3,3));
subplot(3,3,6)
imshow(filt4)
title('mid noise')

wi=wiener2(sa,[5,5]);
subplot(3,3,7)
imshow(wi)
title('wi filter')

filt1=ordfilt2(sa,1,ones(3,3));
subplot(3,3,8)
imshow(filt1)
title('min noise')

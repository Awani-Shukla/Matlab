I=imread('pout.tif');
subplot(2,2,1)
imshow(I)
title('A')
j=imadjust(I);
subplot(2,2,2)
imshow(j)
title('B')
k=imadjust(I,[0.3 0.7]);
subplot(2,2,3)
imshow(k)
title('C')
k=imadjust(I,[0.3 0.7],[0.9 0.3]);
subplot(2,2,4)
imshow(k)
title('D')
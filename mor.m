a=imread('C:\Users\user\Desktop\Test_images\monarch.jpg');
a=im2bw(a);
subplot(3,3,1)
imshow(a);
title('ori')

se=strel('line',10,45)
dila= imdilate(a,se)
subplot(3,3,2)
imshow(dila)
title('dilate')

er=imerode(a,se);
subplot(3,3,3)
imshow(er)
title('er')

mydi=imdilate(a,se)
ebou=(mydi-a)
subplot(3,3,4)
imshow(ebou)
title('ext')


ebouin=(a-er)

subplot(3,3,5)
imshow(ebouin)
title('int')




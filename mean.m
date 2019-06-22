a=imread('C:\Users\user\Desktop\Test_images\crow.jpg');
a=imresize(a,[256 256]);
subplot(4,3,1)
imshow(a)

a=im2double(a);
filter=[1/9 1/9 1/9 ; 1/9 1/9 1/9 ; 1/9 1/9 1/9 ];
filter1=[1/25 1/25 1/25 1/25 1/25 ; 1/25 1/25 1/25 1/25 1/25 ;1/25 1/25 1/25 1/25 1/25 ;1/25 1/25 1/25 1/25 1/25 ;1/25 1/25 1/25 1/25 1/25 ]

f_i=conv2(a,filter,'same');

subplot(4,3,2)
imshow(f_i)
title('fil')

s=imnoise(a,'gaussian',0,0.01);
subplot(4,3,3)
imshow(s)
title('gau noi')

f_i=conv2(s,filter,'same');
subplot(4,3,4)
imshow(f_i)
title('gau noi ave 3')
f_i=conv2(s,filter1,'same');
subplot(4,3,5)
imshow(f_i)
title('gau noi ave 5')



s=imnoise(a,'salt & pepper',0.02);
subplot(4,3,6)
imshow(s)
title('s &p noi')

f_i=conv2(s,filter,'same');
subplot(4,3,7)
imshow(f_i)
title('s &p ave 3')
f_i=conv2(s,filter1,'same');
subplot(4,3,8)
imshow(f_i)
title('s &p ave 5')

s=imnoise(a,'speckle');
subplot(4,3,9)
imshow(s)
title('spe noi')

f_i=conv2(s,filter,'same');
subplot(4,3,10)
imshow(f_i)
title('spe ave 3')

f_i=conv2(s,filter1,'same');
subplot(4,3,11)
imshow(f_i)
title('spe ave 5')



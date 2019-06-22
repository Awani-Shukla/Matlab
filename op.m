a=imread('C:\Users\user\Desktop\Test_images\monarch.jpg');
a=im2bw(a);
subplot(3,3,1)
imshow(a);
title('ori')

% se=strel('disk',1)
% 
% 
% 
% 
% dila= imdilate(a,se);
% dila= imdilate(dila,se);
% subplot(3,3,3)
% imshow(dila);
% 
% 
% title('dila')
% 
% er=imerode(dila,se);
% 
% 
% subplot(3,3,2)
% imshow(er)
% title('out')

se=[1,1,1;1,1,1;1,1,1]


dila= imdilate(a,se);
%ila= imdilate(dila,se);
 subplot(3,3,2)
imshow(dila);
title('dila')


% er=imerode(dila,se);
% subplot(3,3,3)
% imshow(er);
% title('out')


faceDetector=vision.CascadeObjectDetector('EyePairBig');
img=imread('C:\Users\user\Desktop\Test_images\group-photo3.jpg');
bb=step(faceDetector,img);
iimg=insertObjectAnnotation(img,'rectangle',bb,'eye')
figure(1);
imshow(iimg);
title('detect face');
faceDetector=vision.CascadeObjectDetector('FrontalFaceCart');
img=imread('C:\Users\user\Desktop\Test_images\group-photo1.png');
bb=step(faceDetector,img);
iimg=insertObjectAnnotation(img,'rectangle',bb,'face')
figure(1);
imshow(iimg);
title('detect face');
faceDetector=vision.CascadeObjectDetector('Mouth','MergeThreshold',16);
img=imread('C:\Users\user\Desktop\Test_images\group-photo3.png');
bb=step(faceDetector,img);
iimg=insertObjectAnnotation(img,'rectangle',bb,'Mouth')
figure(1);
imshow(iimg);
title('detect face');
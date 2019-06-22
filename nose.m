faceDetector=vision.CascadeObjectDetector('Nose','MergeThreshold',4);
img=imread('C:\Users\user\Desktop\Test_images\group-photo.png');
bb=step(faceDetector,img);
iimg=insertObjectAnnotation(img,'rectangle',bb,'nose')
figure(1);
imshow(iimg);
title('detect face');
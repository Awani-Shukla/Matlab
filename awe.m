x=imread('C:\Users\user\Desktop\Test_images\icecream.jpg');
x=rgb2gray(x);
x=imresize(x,[256 256]);
y=double(x);
[m,n]=size(y);
l=double(255)
a=double(100);
b=double(80);
for i=1:m
    for j=1:n
        if(y(i,j)>=a & y(i,j)<=b)
            z(i,j)=y(i,j);
        else
            z(i,j)=0;
        end
    end
end

imshow(uint8(y));
figure
imshow(uint8(z));


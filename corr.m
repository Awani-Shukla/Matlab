a=imread('C:\Users\user\Desktop\Test_images\lenna.jpg');

a=imresize(a,[256 256]);
[r c]=size(a);
a=im2double(a);
filter=[1 1 -3;1 -2 1;1 2 0];

for i=2:r-1
    for j=2:c-1
        s=0;
        r=0;
        c=1;
        for k=i-1:i+1
            r=r+1;
            c=1;
            for l=j-1:j+1
                s=s+a(k,l)*filter(r,c);
                c=c+1;
            end
        end
        result(i,j)=s;
    end
end
            
 subplot(2,2,1)
 imshow(a)
 subplot(2,2,2)
 imshow(result)
 f_i=imfilter(a,filter);
 subplot(2,2,3)
 imshow(f_i)
clc;
clear all;
disp('Thresholding PRAC ');
original=imread("C:\Users\asus\OneDrive\Desktop\new scilab\supraa.jpeg");
dup=original;
[row column]=size(dup);
thresh=3
for i=1:row
    for j=1:column
        if(original(i,j)< thresh)
            dup(i,j)=0;
        else
            dup(i,j)=255;
        end
     end
end
figure(1),imshow(original),title("Original Image");
figure(1),imshow(dup), title("Thresholded Image ");

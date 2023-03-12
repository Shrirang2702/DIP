clc;
clear all;
disp('Image Negative 341 PRAC 5.1');
original=imread("C:\Users\asus\OneDrive\Desktop\new scilab\draken.jpeg");
imgdouble=double(original);
//For 8 bit image
c=255;
negative=c-original;
figure(1)
title("Original Image")
imshow(original);
figure(2)
title("Negative Image")
imshow(negative);

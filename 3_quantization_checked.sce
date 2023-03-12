clc;
clear all;
clf;

i = imread("C:\Users\asus\OneDrive\Desktop\new scilab\supraa.jpeg");
i = double(i);
disp("i = ",i);
b = max(i);
disp("b = ",b);
a = input("How many bits do you want? 1,2,4,6 ? : ");
c = b/(2*a);
f = floor(i/c);
disp("f = ",f);
fl = (f*255)/max(f);
figure(1)
imshow(uint8(i))
title("Original");
figure(2)
imshow(uint8(fl));
title("Resultant");

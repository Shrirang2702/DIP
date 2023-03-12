clc;
clear all;

disp('Bit Resolution  Practical');

x=imread("C:\Users\asus\OneDrive\Desktop\new scilab\draken.jpeg");
imshow(x);
[r c s]=size(x);
disp([r c s]);
m=max(max(max(x)));
disp(m);
title("Original Image")
b=[2 3 4];
for i=1:length(b)
    d=2^b(i);
    z=round(x/d);
    figure
    imshow(z*d)
end

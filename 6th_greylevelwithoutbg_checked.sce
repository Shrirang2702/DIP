clc;
clear all;
disp('Grey level slicing without Background');
original=imread("C:\Users\asus\OneDrive\Desktop\new scilab\supraa.jpeg");
doub=double(original);
[row column]=size(doub);
for i=1:1:row
    for j=1:1:column
        if((doub(i,j)> 50)) && (doub(i,j)<150)
            doub(i,j)=0;
        end
     end
end
figure(1), imshow(original), title("Original Image");
figure(2),imshow(uint8(doub)), title("Resultant Image");

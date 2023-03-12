disp(" Dialation-Erosion Practical");
adilate=zeros(10,10);
adilate(4:7,4:7)=1
disp("Matrix element for dilation");
disp(adilate);
struele=imcreatese("rect",3,3);

afterdilate=imdilate(adilate,struele);
disp("After dilate");
disp(afterdilate);

afteropen=imopen(adilate,struele);
disp("After open");
disp(afteropen);

aerode=zeros(10,10);
aerode(4:7,4:7)=1
disp("Matrix element for erosion");
disp(aerode);
struele=imcreatese("rect",3,3);

aftererode=imerode(aerode,struele);
disp("After erosion");
disp(aftererode);

image="C:\Users\asus\OneDrive\Desktop\new scilab\supraa.jpeg"
original=imread(image)
se=imcreatese("rect",3,3);

figure(1);
title("Original Image");
imshow(original);

dilate=imdilate(original,se);
figure(2);
title("Dilation");
imshow(dilate);

erode=imerode(original,se);
figure(3);
title("Erosion");
imshow(erode);

afteropen=imopen(original,se);
figure(4);
title("Opening");
imshow(afteropen);

afterclose=imclose(original,se);
figure(5);
title("Closing");
imshow(afterclose);

S=imread(image);
se = imcreatese('ellipse',11,11);

S2 = imclose(S,se);
figure(6);
title(image);
imshow(S2);

S=imread(image)

se = imcreatese('ellipse',9,9);

S2 = imopen(S,se);
figure(7);
title(image);
imshow(S2);

imgColor1 = imread('images\sse1.bmp');
imgColor2 = imread('images\sse2.bmp');

img1 = single(rgb2gray(imgColor1));
img2 = single(rgb2gray(imgColor2));

[f1,d1] = vl_sift(img1); 
[f2,d2] = vl_sift(img2);

h1 = vl_plotframe(f1(1:3,:));
h2 = vl_plotframe(f2(1:3,:));
image(imgColor1);
set(h1, 'color', 'r', 'linewidth', 1);

image(imgColor2);
set(h2, 'color', 'b', 'linewidth', 1);
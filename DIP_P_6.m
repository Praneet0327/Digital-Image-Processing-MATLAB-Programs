% MATLAB Program for the Implementation of image sharpening filters and Edge Detection using Gradient Filters
i=imread('/Users/praneet/Desktop/ADGIPS/Sem VI/Labs/DIP_Lab/P-8/SpaceX Starship_Saturn.jpg'); 
subplot(4,2,1); imshow(i); 
title('Original Image'); 

g=rgb2gray(i); 
subplot(4,2,2); imshow(g); title('Gray Image'); 

f=fspecial('laplacian',0.05); 
im=imfilter(g,f); 
subplot(4,2,3); imshow(im); title('Laplacian '); 

s=edge(g, 'sobel'); 
subplot(4,2,4); imshow(s); title('Sobel'); 

p=edge(g, 'prewitt'); 
subplot(4,2,5); imshow(p); title('Prewitt'); 

r=edge(g, 'roberts'); 
subplot(4,2,6); imshow(r); title('Roberts'); 

[BW,thresh,gv,gh]=edge(g,'sobel',[],'horizontal'); 
[BW1,thresh1,gv1,gh1]=edge(g,'sobel',[],'vertical'); 

subplot(4,2,7); imshow(BW); title('Sobel Horizontal'); 
subplot(4,2,8); 
imshow(BW); title('Sobel Vertical');
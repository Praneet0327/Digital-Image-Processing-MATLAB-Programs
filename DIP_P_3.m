% Image Enhancement (Contrast Stretching of a low contrast image)
I=imread('/Users/praneet/Desktop/ADGIPS/Sem VI/Labs/DIP_Lab/P-3/Gloucester Cathedral.jpg'); 
subplot(4,2,1); imshow(I); title('Original Image'); 
g=rgb2gray(I); 
subplot(4,2,5); imshow(g); title('Gray Image'); 
J=imadjust(g,[0.3 0.7],[]); 
subplot(4,2,3); imshow(J); title('Enhanced Image'); 
D= imadjust(I,[0.2 0.3 0; 0.6 0.7 1],[]); 
subplot(4,2,4);imshow(D);title('Enhanced Image 2'); 

% Histogram and Histogram Equalization 
subplot(4,2,7); imhist(g); title('Histogram of Gray Image'); 
m=histeq(g); 
subplot(4,2,6); imshow(m); title('Equalized Image'); 
subplot(4,2,8); imhist(m); title('Histogram of Equalized Image');

% Display of bit planes of an image
i=imread('/Users/praneet/Desktop/ADGIPS/Sem VI/Labs/DIP_Lab/P-3/Gloucester Cathedral.jpg'); 
b0=double(bitget(i,1)); 
b1=double(bitget(i,2)); 
b2=double(bitget(i,3)); 
b3=double(bitget(i,4)); 
b4=double(bitget(i,5)); 
b5=double(bitget(i,6)); 
b6=double(bitget(i,7)); 
b7=double(bitget(i,8)); 
subplot(3,3,1);imshow(i);title('Original Image'); 
subplot(3,3,2);subimage(b0);title('BIT PLANE 0'); 
subplot(3,3,3);subimage(b1);title('BIT PLANE 1'); 
subplot(3,3,4);subimage(b2);title('BIT PLANE 2'); 
subplot(3,3,5);subimage(b3);title('BIT PLANE 3'); 
subplot(3,3,6);subimage(b4);title('BIT PLANE 4'); 
subplot(3,3,7);subimage(b5);title('BIT PLANE 5'); 
subplot(3,3,8);subimage(b6);title('BIT PLANE 6'); 
subplot(3,3,9);subimage(b7);title('BIT PLANE 7');
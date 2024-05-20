% The code is divided in two parts

% First part
% MATLAB Program to display of FFT (1-D & 2-D) of an image 
% This code is to be executed after commenting out the second part
l=im2double(imread('Image Path')); 
f1=fft(l); 
f2=fftshift(f1); 
subplot(2,2,1); imshow(abs(f1)); title('Frequency Spectrum'); 
subplot(2,2,2); imshow(abs(f2)); title('Centered Spectrum'); 

f3=log(1+abs(f2)); 
subplot(2,2,3); imshow(f3); title('log(1+abs(f2))'); 
l=fft2(f1); 
l1=real(l); 
subplot(2,2,4); imshow(l1);title('2-D FFT');

% Second part
% MATLAB Program to represent the content of an image using DFT
% This code is to be executed after commenting out the first part
im = imread('Image Path');
im = rgb2gray(im); 
subplot(2,3,1); imshow(im); title('Original'); 

b=im2double(im); 
F=fft2(b); 
subplot(2,3,2); imshow(F); title('FFT'); 

f=ifft2(F); 
subplot(2,3,3); imshow(f); title('IFFT'); 

mag=abs(F); 
subplot(2,3,4); imshow(mag); title('Magnitude Plot'); 
ang=angle(F); 
subplot(2,3,5); imshow(ang); title('Phase Plot'); 

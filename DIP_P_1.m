%Coded by Praneet
clc
clear all 
close all

% MATLAB Program to demonstrate Geometric transformations

% Image Scaling (Resize)
I  = imread('/Users/praneet/Desktop/ADGIPS/Sem VI/Labs/DIP_Lab/P-1/SpaceX Falcon Heavy.jpg');
subplot(3,2,1); imshow(I); title('Original Image'); 

s = input('Enter Scaling Factor'); 
j = imresize(I,s); 
subplot(3,2,2); imshow(j); title('Scaled Image');


% Image Rotation 
K = imrotate(j,60); 
subplot(3,2,3); imshow(K); title('Rotated Image 60deg'); 

R = imrotate(j,45); 
subplot(3,2,4); imshow(R); title('Rotated Image 45deg'); 

% Image Translation 
X = imtranslate(I,[15, 25]); 
subplot(3,2,5); imshow(X); title('Translated Image'); 

Y = imtranslate(I, [15, 25]); 
subplot(3, 2, 6); 
imshow(Y); 
title('Translated Image, unclipped');

% MATLAB Program for the implementation of image compression by DCT 
clc
clear all 
close all

% Load the image
image = imread('Image Path');

% Convert image to grayscale if it is not already
if size(image, 3) == 3
    image = rgb2gray(image);
end

% Resize the image to make it square
minDim = min(size(image));
image = image(1:minDim, 1:minDim);

% Normalise image
image = double(image)/255;

% Calculate DCT
imageDct = dct2(image);

% Set the compression factor (higher values mean higher compression)
compressionFactor = 4;

% Quantize the DCT coefficients
quantizedDct = round(imageDct / compressionFactor) * compressionFactor;

% Reconstruct the image using inverse DCT
reconstructedImage = idct2(quantizedDct);

% Display the images
figure
subplot(1,2,1)
imshow(image)
title('Original image','FontSize',24)

subplot(1,2,2)
imshow(reconstructedImage, [])
title('Reconstructed image (compressed)','FontSize',24)

% MATLAB Program to compute the mean, SD and Correlation coefficient of an image 
i=imread('/Users/praneet/Desktop/ADGIPS/Sem VI/Labs/DIP_Lab/P-4/Bannf_Park_Canada.jpg'); 
subplot(2,2,1); imshow(i);title('Original Image'); 

g=rgb2gray(i); 
subplot(2,2,2); imshow(g);title('Gray Image'); 

m=mean2(g);disp('m'); disp(m); 
s=std2(g); disp('s'); disp(s); 

figure, 
k=(checkerboard>0.8); 
subplot(2,1,1); imshow(k); title('Image1'); 

k1=(checkerboard>0.5); 
subplot(2,1,2); imshow(k1); title('Image2'); 

r=corr2(k,k1); 
disp('r');disp(r);
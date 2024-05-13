% MATLAB Program to implement Canny edge detection Algorithm 
i= imread('/Users/praneet/Desktop/ADGIPS/Sem VI/Labs/DIP_Lab/P-8/Iron Man_Civil War.jpg'); 
g=rgb2gray(i); 
subplot(2,2,1); imshow(i); title('Original Image'); 
subplot(2,2,2); imshow(g); title('Gray Image'); 

c=edge(g,'canny'); 
subplot(2,2,3); imshow(c); title('Canny output');

% MATLAB Program for edge detection algorithm
a=imread('/Users/praneet/Desktop/ADGIPS/Sem VI/Labs/DIP_Lab/P-8/Iron Man_Civil War.jpg'); 
imshow(a); 
f=rgb2gray(a); 
figure,imshow(f);

[g,t]=edge(f,'sobel','vertical'); 
figure,subplot(3,1,1); 
imshow(g); 

[g,t]=edge(f,'sobel','horizontal');
subplot(3,1,2);
imshow(g); 

[g,t]=edge(f,'sobel','both'); 
subplot(3,1,3);
imshow(g); 
[g,t]=edge(f,'prewitt','vertical'); 
figure,subplot(3,1,1); imshow(g);

[g,t]=edge(f,'prewitt','horizontal');
subplot(3,1,2);
imshow(g); 
[g,t]=edge(f,'prewitt','both'); 
subplot(3,1,3);
imshow(g); 

[g,t]=edge(f,'roberts','vertical'); 
figure,subplot(3,1,1); 
imshow(g);
[g,t]=edge(f,'roberts','horizontal'); 
subplot(3,1,2);
imshow(g); 

[g,t]=edge(f,'roberts','both'); 
subplot(3,1,3);
imshow(g); 
[g,t]=edge(f,'canny','vertical');0
figure,subplot(3,1,1); 

imshow(g); [g,t]=edge(f,'canny','horizontal'); 
subplot(3,1,2);
imshow(g); 
[g,t]=edge(f,'canny','both'); subplot(3,1,3);
imshow(g);
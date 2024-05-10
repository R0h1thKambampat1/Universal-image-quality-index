%% Universal Image Quality Index

% Author: NALLAPALEM NEERAJSRINIVAS & ROHITH KAMBAMPATI
% NET ID: ns620 & ka517
% Roll Number: 1710110224 & 1710110168
% Instructor: Prof. Vijay Kumar Chakka and Dr. Upendra Pandey
% DSP PROJECT : UNIVERSAL IMAGE QUALITY INDEX

clc;            % Clear Command window
clearvars;      % Clear all variables 
close all;      % close all Figures and Plots
%%

x = double(imread('OrigLena.gif'));%converts the iimage read to double
h1 = double(imread('Meanshiftlena.gif'));%converts the iimage read to double
Q1 = UIQI(x, h1);%calling the function universal image quality index
[MSE1,PSNR1] = msepsnr(x,h1);%calling the function that generates MSE and PSNR
figure;
display(['MEAN SHIFT LENA IMAGE - ','Q = ',num2str(Q1),'  MSE = ',num2str(MSE1)]);%displays the value of Q1
subplot(2,2,1);
imshow(uint8(x));%displays the mean shift image
title('Original Image');
subplot(2,2,2);
imshow(uint8(h1));%displays the original image          
title('Mean shift lena image');%title of the image

h4 = double(imread('Contraststretchinglena.gif'));%reads the image and converts into double
Q4 = UIQI(x, h4);%calling universal image quality index function
[MSE4,PSNR4] = msepsnr(x,h4);%calling the function that generates MSE and PSNR
display(['CONTRAST STRETCHING LENA IMAGE - ','Q = ',num2str(Q4),'  MSE = ',num2str(MSE4)]);
subplot(2,2,3);
imshow(uint8(x));%displays the image
title('Original Image');%the title of the image 
subplot(2,2,4);
imshow(uint8(h4));
title('Contrast stretching lena image');


h7 = double(imread('saltpepperlena.gif'));
Q7 = UIQI(x, h7);
[MSE7,PSNR7] = msepsnr(x,h7);
figure;                                     %same comments as above
display(['SALT PEPPER LENA IMAGE - ','Q = ',num2str(Q7),'  MSE = ',num2str(MSE7)]);
subplot(2,2,1);
imshow(uint8(x));
title('Original Image');
subplot(2,2,2);
imshow(uint8(h7));
title('Salt pepper lena image');

h6 = double(imread('Multipliedspecklelena.gif'));
Q6 = UIQI(x, h6);
[MSE6,PSNR6] = msepsnr(x,h6);
display(['MULTIPLIED SPECKLE LENA IMAGE - ','Q = ',num2str(Q6),'  MSE = ',num2str(MSE6)]);
subplot(2,2,3);    %same comments as above         %
imshow(uint8(x));
title('Original Image');
subplot(2,2,4);
imshow(uint8(h6));
title('Multiplied speckle lena image');

h3 = double(imread('Additivegaussianlena.gif'));
Q3 = UIQI(x, h3);
[MSE3,PSNR3] = msepsnr(x,h3);
figure;             %comments same as above
display(['ADDITIVE GAUSSIAN LENA IMAGE - ','Q = ',num2str(Q3),'  MSE = ',num2str(MSE3)]);
subplot(2,2,1);
imshow(uint8(x));
title('Original Image');
subplot(2,2,2);
imshow(uint8(h3));
title('Additive gaussian lena image');

h2 = double(imread('Blurringlena.gif'));
Q2 = UIQI(x, h2);
[MSE2,PSNR2] = msepsnr(x,h2);
display(['BLURRING LENA IMAGE - ','Q = ',num2str(Q2),'  MSE = ',num2str(MSE2)]);
subplot(2,2,3);
imshow(uint8(x));       %comments same as above
title('Original Image');
subplot(2,2,4);
imshow(uint8(h2));
title('blurring lena image');

h5 = double(imread('JPEGcompressedlena.gif'));
Q5 = UIQI(x, h5);
[MSE5,PSNR5] = msepsnr(x,h5);
figure;             %comments same as above
display(['JPEG COMPRESSED LENA IMAGE - ','Q = ',num2str(Q5),'  MSE = ',num2str(MSE5)]);
subplot(2,2,1);
imshow(uint8(x));
title('Original Image');
subplot(2,2,2);
imshow(uint8(h5));
title('JPEG compressed lena image');

% from statistical Image quality
Qa = quality(x, h1);%getting the quality index from our code
Qb = quality(x, h4);
Qc = quality(x, h7);
Qd = quality(x, h6);
Qe = quality(x, h3);
Qf = quality(x, h2);
Qg = quality(x, h5);
display(['MEAN SHIFT LENA IMAGE - Q(from IEEE paper) - ',num2str(Qa)]);%displays the image
display(['CONTRAST STRETCHING LENA IMAGE - Q(from IEEE paper) - ',num2str(Qb)]);
display(['SALT PEPPER LENA IMAGE - Q(from IEEE paper) - ',num2str(Qc)]);
display(['MULTIPLIED SPECKLE LENA IMAGE - Q(from IEEE paper) - ',num2str(Qd)]);
display(['ADDITIVE LENA LENA IMAGE - Q(from IEEE paper) - ',num2str(Qe)]);
display(['BLURRING LENA IMAGE - Q(from IEEE paper) - ',num2str(Qf)]);
display(['JPEG COMPRESSED LENA IMAGE - Q(from IEEE paper) - ',num2str(Qg)]);


%% MSE & PSNR
% <include>msepsnr.m</include>
%% Universal Quality Index
% <include>UIQI.m</include>
%% Universal quality index(our code)
% <include>quality.m</include>
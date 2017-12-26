%%%%%%%%% main %%%%%%%%%%%

clear
close all
%%%%%%%%%%%% read images %%%%%%%%%%%%%%
f = 'Bharti-0';
ext = 'jpg';
img1 = imread([f '1.' ext]);
img2 = imread([f '2.' ext]);
% img3 = imread('b3.jpg');

%%%%%%%% perform mosaicing of two images %%%%%%%%%
img0 = imMosaic(img2,img1,1);  
% img0 = imMosaic(img1,img0,1);
figure,imshow(img0)
imwrite(img0,['mosaic_' f '.' ext],ext)
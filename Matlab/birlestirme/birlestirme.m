 % resim birlestirme
 close all;clear all;
 clc;
 first = imread('aslan.bmp');
 second = imread('kadin2.jpg');
 c_first = first * 0.7;
 c_second = second * 0.4;
 merge = (c_first + c_second) / 2;
 
 subplot(1,2,1) ; imshow(first);
 subplot(1,2,2); imshow(merge);
 % clear all
% close all
% clc
% 
% A = imread('aslan.bmp');
% B = imread('kadin2.jpg');
% figure(1); imshow(A);
% figure(2); imshow(B);
% 
% % type: help blendMode      to see a list of blend modes aviable
% mode = 'hardlight';
% 
% % move B in respect to the top-left corner of A
% offsetW = 1;
% offsetH = 1;
% 
% tic
% figure(3); imshow(blendMode(A, B, mode, offsetW, offsetH));
% toc

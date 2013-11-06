clear all; close all;

a=imread('fark1.bmp');
b=imread('fark2.bmp');
a_gri = rgb2gray(a);
b_gri = rgb2gray(b);



fark_gri= a_gri- b_gri;

fark_im = imabsdiff(a_gri(:,:),b_gri(:,:));
fark_imbw = im2bw(fark_im,0.15);
bwarea = bwareaopen(fark_imbw,60);
bw = im2bw(bwarea);

red = a(:,:,1);
green = a(:,:,2);
blue = a(:,:,2);


fark_red = uint8(bw).*red;
fark_green = uint8(bw).*green;
fark_blue= uint8(bw).*blue;
rgb = cat(3,fark_red,fark_green,fark_blue);

figure(1);
subplot(2,2,1); imshow(a); title('resim1');
subplot(2,2,2); imshow(b); title('resim2');
subplot(2,2,3); imshow(rgb); title('fark');














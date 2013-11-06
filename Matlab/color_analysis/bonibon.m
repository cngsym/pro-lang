clear all;  close all;  clc;
 
im = imread('bonibon.jpg');
 
r = im(:,:, 1);
g = im(:,:, 2);
b = im(:,:, 3);
 
rgb = cat(3,r,g,b);

 
%% yesil bonibonlar 
 
bwr_y = abs(double(r) - 80) <= 80;
bwg_y = abs(double(g) - 240) <= 80;
bwb_y = abs(double(b) - 60) <= 80;
bw_y = bwr_y .* bwg_y .* bwb_y;
 

 
bw3_y = cat(3, bw_y,bw_y,bw_y);
img_y = uint8(double(im) .* bw3_y);
 

 
%% sari bonibonlar
 
bwr_s = abs(double(r) - 220) <= 35;
bwg_s = abs(double(g) - 220) <= 35;
bwb_s = abs(double(b) - 35) <= 35;
bw_s= bwr_s .* bwg_s .* bwb_s;
 
 
bw3_s = cat(3, bw_s,bw_s,bw_s);
img_s = uint8(double(im) .* bw3_s);
 

 %% mavi bonibonlar
 
bwr_m = abs(double(r) - 50) <= 50;
bwg_m = abs(double(g) - 100) <= 50;
bwb_m = abs(double(b) - 150) <= 50;
bw_m= bwr_m .* bwg_m .* bwb_m;
 

 
bw3_m = cat(3, bw_m,bw_m,bw_m);
img_m = uint8(double(im) .* bw3_m);
 

%% turuncu bonibonlar
 
bwr_t= abs(double(r) - 250) <= 50;
bwg_t = abs(double(g) - 90) <= 50;
bwb_t = abs(double(b) - 50) <= 50;
bw_t= bwr_t .* bwg_t.* bwb_t;
 

bw3_t = cat(3, bw_t,bw_t,bw_t);
img_t = uint8(double(im) .* bw3_t);
 

%% kirmizi bonibonlar
bwr_k= abs(double(r) - 170) <= 25;
bwg_k = abs(double(g) - 25) <= 25;
bwb_k = abs(double(b) - 30) <= 25;
bw_k= bwr_k .* bwg_k.* bwb_k;
 

bw3_k = cat(3, bw_k,bw_k,bw_k);
img_k = uint8(double(im) .* bw3_k);
 

%% kahverengi bonibonlar
 
bwr_kh= abs(double(r) - 55) <= 40;
bwg_kh = abs(double(g) - 60) <= 40;
bwb_kh = abs(double(b) - 40) <= 40;
bw_kh= bwr_kh .* bwg_kh.* bwb_kh;
 
 
bw3_kh = cat(3, bw_kh,bw_kh,bw_kh);
img_kh = uint8(double(im) .* bw3_kh);
 

 
  %% hepsini ayn? anda göstermek istersek
figure(13);
subplot(2,4,1); imshow(im); title('Bonibon');
subplot(2,4,2); imshow(img_k); title('red');
subplot(2,4,3); imshow(img_y); title('green');
subplot(2,4,4); imshow(img_m); title('blue');
subplot(2,4,5); imshow(img_s); title('yellow');
subplot(2,4,6); imshow(img_kh);title('brown');
subplot(2,4,7); imshow(img_t);title('orange');
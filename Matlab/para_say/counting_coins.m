close all;
clear all;
I =im2bw(imread('coins.png'));% görüntüler im2bw komutu ile 
% binary seviyeye dönüştürülür.

arkaplan = imclose(I, strel('disk',2));% imclose ile paraları  cıkarıyoruz. 

ayir = imfill(arkaplan, 'holes');% imfill ile delikleri yok ediyoruz. 

imshow(ayir);

I2 = imsubtract(arkaplan,I); % eger varsa arkadaki kucuk bosluklari siler.

[etiket, say] = bwlabel(ayir); 
 
fprintf('resimde %d tane para var.\n', say)

 

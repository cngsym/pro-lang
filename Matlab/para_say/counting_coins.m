close all;
clear all;
I =im2bw(imread('coins.png'));% g�r�nt�ler im2bw komutu ile 
% binary seviyeye d�n��t�r�l�r.

arkaplan = imclose(I, strel('disk',2));% imclose ile paralar�  c�kar�yoruz. 

ayir = imfill(arkaplan, 'holes');% imfill ile delikleri yok ediyoruz. 

imshow(ayir);

I2 = imsubtract(arkaplan,I); % eger varsa arkadaki kucuk bosluklari siler.

[etiket, say] = bwlabel(ayir); 
 
fprintf('resimde %d tane para var.\n', say)

 

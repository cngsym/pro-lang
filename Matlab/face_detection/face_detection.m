clear all; close all;
I=imread('harry_potter.jpg');



% Asagida renk donusumu yapisi olusturuyoruz ve  renklerin daha keskin hale
% gelmesini sagliyoruz 

cform = makecform('srgb2lab'); 
yeni_form  = applycform(I,cform) ; % figure(2);imshow(yeni_form);



katman2 = yeni_form(:,:,2);  % figure(3);imshow(katman1);
level1 =graythresh(yeni_form(:,:,2));
bw1=im2bw(yeni_form(:,:,2),level1);  %figure(4);imshow(BW1);



katman3 = yeni_form(:,:,3);% figure(5);imshow(katman3);

level2=graythresh(yeni_form(:,:,3));
                                      
bw2=im2bw(yeni_form(:,:,3),level2); % figure(6);imshow(bw2)

                                       

bw=bw1.*bw2;

bw = bwareaopen(bw,80);  % 80 pixelden kucuk olanlar kaldiriyoruz.
bw = imfill(bw,'holes');  figure(7);imshow(bw)

c = regionprops(bw, 'Centroid');
a = [c.Centroid];
a; % a ' da merkezler tutulmaktadir.

 % x ve y degerleri her bir yüzün agirlik merkezinin x ve y
 % koordinatlaridir
j = 2;
s = 1;
 % j ' ikiden baslatiyoruz ki   her bir beyaz bölgenin(yuzun) agirlik
 % merkezini bulalim.
figure(8) ;imshow(I)
% asagidaki for döngüsü ile de yuzleri tek tek ayiriyoruz.
for i = 1:2:length(a)
        x =  (a(i)-50);
        y = (a(j)-50);
        
        Ii = imcrop(I,[x y 100 100]);
        imwrite(Ii,num2str(s,'face_%02d.jpg'));
        figure(i); imshow(Ii) 
        
        j = j+2;
        s = s + 1;
end


  

    


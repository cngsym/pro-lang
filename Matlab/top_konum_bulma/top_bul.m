function top_bul()
   
    I = imread('top.jpg');
    bw = im2bw(I);
    imshow(bw);
    [a,b] = bwlabel(bw);
 
    c = (a==2);
    s = regionprops(c, 'centroid')
    sz = size(c)
    
    merkez = s.Centroid

    if merkez(1) < sz(2)/2
        yon1 = 'sol';
    else
        yon1 = 'sað';
    end
    
    if merkez(2) < sz(1)/2
        yon2 = 'üst';
    else
        yon2 = 'alt';
    end
    
    sonuc = ['futbol topu ',yon1,' ',yon2, ' tarafta'];
    fprintf('%s\n', sonuc);

end 

% top_bul('top.jpg')


%cehars
function komut_uret
      im = imread('yon.png');
      %imshow(im);
      bw = im2bw(im);
      %imshow(bw);
      

      bw1 = imcrop(bw,[0 0 245 480]); % rect = [x y w h];
      %imshow(bw), figure(1), imshow(bw1)
      
      bw2 = imcrop(bw, [245 0 245 480]);
       %figure(2); imshow(bw2);

      if (sum (bw1(:)) > sum (bw2(:)) )
            fprintf('sola ilerler.\n')
            
      elseif (sum (bw1(:)) < sum (bw2(:)))
            fprintf('saga dogru ilerler\n')
            
      else
            fprintf('direkt gider.\n')
    
      end
end
% komut_uret()
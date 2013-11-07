function  topu_bul()
   im = imread('saha.png');
   figure(1); imshow(im);
  % figure(2);imshow(bw);
   r = im(:,:, 1);
   g = im(:,:, 2);
   b = im(:,:, 3);
 
   % topu bul
   bwr = abs(double(r) - 10) <= 10;
   bwg = abs(double(g) - 162) <= 10;
   bwb = abs(double(b) - 230) <= 10;
   bw = bwr .* bwg .* bwb;
   
   sb = cat(3, bw,bw,bw);
    % figure(2); imshow(sb);
    
   
    % sol ust
    bw1 = imcrop(sb,[0 0 417 192]); % rect = [xmin ymin width h];
    
    % sol alt 
    bw2 = imcrop(sb, [0 192  417 192]);
       %figure(2); imshow(bw2);
       
    % sag ust   
    bw3 = imcrop(sb, [417 0  417 192]);  
    
    % sag alt
    bw4 = imcrop(sb, [417 192  417 192]); 
    
    if     (sum (bw1(:)) > sum (bw2(:)) && sum (bw1(:)) > sum (bw3(:)) && sum (bw1(:)) > sum (bw4(:)) )  
            fprintf('top sol usttedir.\n')
            
    elseif (sum(bw2(:)) > sum (bw1(:)) && sum (bw2(:)) > sum (bw3(:)) && sum (bw2(:)) > sum (bw4(:)) )  
            fprintf('top sol alttadir.\n')
            
    elseif (sum(bw3(:)) > sum (bw1(:)) && sum (bw3(:)) > sum (bw2(:)) && sum (bw3(:)) > sum (bw4(:)))   
            fprintf('top sag usttedir.\n')
            
    elseif (sum(bw4(:)) > sum (bw1(:)) && sum (bw4(:)) > sum (bw3(:)) && sum (bw4(:)) > sum (bw2(:)) )  
          fprintf('top sag alttadir.\n')
            
    end
end
    
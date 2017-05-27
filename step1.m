function [p] = step1(img)

    [row, col, ~] = size(img);
    
    %%%%%%%%%
    MN = zeros(1, 256);

    for l = 0: 255
        
        for i = 1: row
        
            for j = 1: col
        
                if(img(i,j) == l)
                
                       MN(1,l+1) = MN(1,l+1) +1;
                end
                    
            end
        end
            
    end
  %%%%%%%%%%%% MN [freq(0), freq(1), ....., freq(255)] row = 1; col = 256
   p = zeros(1, 256);
   
   for k = 1: 256
    
        p(1, k) = MN(1, k)/(row*col);
   end
   
   %%%%%%%%% p row = 1; col = 256; 

   
end
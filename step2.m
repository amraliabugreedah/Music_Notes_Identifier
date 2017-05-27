function [p1kMat] = step2(p)

        
       p1kMat = zeros(1, 256);
       
       for k = 1: 256
        
           p1k = 0;
        
           for i = 1: (k)
        
               p1k = p1k + p(1,i);
            
           end 
           p1kMat(1, k) = p1k;
       end
end
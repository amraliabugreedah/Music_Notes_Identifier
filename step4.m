function [mg] = step4(p)

    mg = 0;
    
    for i = 1: 256
    
         mg = mg + (p(1, i)*(i-1));
    
    end

end
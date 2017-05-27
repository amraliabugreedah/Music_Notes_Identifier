function key = getKey(Im, noteArray)


        trebleClef = Im{15, 1};
        bassClef = Im{14, 1};
        keyPart = noteArray{1};
       
       ssqT = 0;
       ssqB = 0;
    
       for i = 1: 207
           for j = 1: 91
       
               ssqT = ssqT + (trebleClef(i,j) - keyPart(i, j))^2;
               
               ssqB = ssqB + (bassClef(i,j) - keyPart(i, j))^2;
               
           end
       end
       
       if(ssqT < ssqB)
           key = 1;
       else
           key = 2;
       end

        
    
end
function orderOfNotes = getArrayOfNotes(Im, noteArray)
orderOfNotes = zeros(1,13);
 
      
        for i = 2: 14     %% notes of piecenote noteArray{}
        ssqF = zeros(1, 13);
      
         
            for x = 1: 13 %% Im notes {}
             
                for a = 1: 207
                    for b = 1: 61
                
                        ssqF(1,x) = ssqF(1, x) + (Im{x,1}(a, b) - noteArray{i}(a, b))^2;
                        
                    end
                end
               % display(ssqF(1,x));
                       
            end
            [~,I] = min(ssqF);
                       minimumVal = I;
                
        orderOfNotes(1, i-1) = minimumVal;
        %display(minimumVal);
        end
      
    
end
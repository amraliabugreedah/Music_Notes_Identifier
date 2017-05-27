function [strOfPiece] = writeIt(Im, noteArray)

        key = getKey(Im, noteArray); %% 1 for treble clef, 2 for bass clef

        finalArrayOfNotes = getArrayOfNotes(Im, noteArray);
        
        strOfPiece ='';
        
        if key == 1
            strOfPiece = strcat(strOfPiece , '"');  
          for i = 1 : 13
               
               strOfPiece = strcat(strOfPiece , Im{finalArrayOfNotes(1,i),2}(1:2));  
               if i < 13
               strOfPiece = strcat(strOfPiece , ', ');   
               end
          end
        
             strOfPiece = strcat(strOfPiece , '"');  
        elseif key == 2 
            
              strOfPiece = strcat(strOfPiece , '"');  
          for i = 1 : 13
               strOfPiece = strcat(strOfPiece , Im{finalArrayOfNotes(1,i),2}(4:5));    
            if i < 13
               strOfPiece = strcat(strOfPiece , ', ');   
               end
          end
            strOfPiece = strcat(strOfPiece , '"');  
        end
        
       
end
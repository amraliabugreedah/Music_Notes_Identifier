function [img] = toBinary(img, NDM)

        [row, col, ~] = size(img);

           threshold = NDM;
            for i = 1: row
                for j = 1: col
            
                  if(img(i,j) > threshold)

                        img(i, j) = 255;
                  else
                        img(i, j) = 0;
                
                  end
        
                end
            end

%figure

%imshow(img)

end
function [pixels] = myMedianFilter(inputImg) 

img = double(inputImg);

%imshow(img);

[row, col, ~] = size(img);

pixels = zeros(row, col);


for i = 1: 1: row
    for j = 1: 1: col
    
        if(i == 1 && j == 1)  %% top left corner
            
            pixels(i, j) = (img(i, j+1) + img(i+1, j+1) + img(i+1, j) +(2*255))/11;
            
        elseif(j == 1 && i ~= 1 && i ~= row)  %% left side
            
            pixels(i, j) = (img(i-1, j) + img(i-1, j+1) + img(i, j+1) + img(i+1, j+1) + img(i+1, j) + (2*255))/11;
            
        elseif(i == row && j == 1)  %% bot left corner
            
            pixels(i, j) = (img(i-1, j) + img(i-1, j+1) + img(i, j+1) + (2*255))/11;
            
        elseif(i == row && j ~= 1 && j ~= col) %% bot side
            
            pixels(i, j) = (img(i, j-1) + img(i-1, j-1) + img(i-1, j) + img(i-1, j+1) + img(i, j+1) + (2*255))/11;
            
        elseif(i == row && j == col)   %%bot right corner
            
            pixels(i, j) = (img(i, j-1) + img(i-1, j-1) + img(i-1, j) + (2*255))/11;
            
        elseif(j == col && i ~= 1 && i ~= row) %% right side
            
            pixels(i, j) = (img(i+1,j) + img(i+1, j-1) + img(i, j-1) + img(i-1, j-1) + img(i-1, j) + (2*255))/11;
            
        elseif(i == 1 && j == col) %% top right corner
            
            pixels(i, j) = (img(i, j-1) + img(i+1, j-1) + img(i+1, j) + (2*255))/11;
            
        elseif(i == 1 && j ~= 1 && j ~= col )  %% top side
            
            pixels(i, j) = (img(i, j-1) + img(i+1, j-1) + img(i+1, j) + img(i+1, j+1) + img(i, j+1) + (2*255))/11;
            
        else
            pixels(i, j) = (img(i-1, j) + img(i-1, j-1) + img(i, j-1) + img(i+1, j-1) + img(i+1, j) + img(i+1, j+1) + img(i, j+1) + img(i-1, j+1) + (1*255)+50)/8;
        end
        
        if(pixels(i, j) > 255)
            pixels(i, j) = 255;
        end
        
        pixels(i,j) = round( pixels(i,j));
    end
end

%imshow(uint8(img))
%figure
%imshow(uint8(pixels));


end
function [parts] = getNotes(img)  %divide input 1, 2 or 3

        part1 = img(1:207,1:91);
        part2 = img(1:207,91:152);
        part3 = img(1:207,152:213);
        part4 = img(1:207,213:274);
        part5 = img(1:207,274:335);
        part6 = img(1:207,335:396);
        part7 = img(1:207,396:457);
        part8 = img(1:207,457:518);
        part9 = img(1:207,518:579);
        part10 = img(1:207,579:640);
        part11 = img(1:207,640:701);
        part12 = img(1:207,701:762);
        part13 = img(1:207,762:823);
        part14 = img(1:207,823:884);
      %  imshow(img);
      
        parts = {part1, part2, part3, part4, part5, part6, part7, part8, part9, part10, part11, part12, part13, part14};
        
        %for i = 1:14
            %figure('Name',strcat('part', int2str(i)), 'NumberTitle', 'off')
           % imshow(parts{i});
           
        %end
        
end
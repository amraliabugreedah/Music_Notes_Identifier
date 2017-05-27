function [strInput1, strInput2, strInput3] = callIt()

        Im = readImages();
        input1BinaryDivided = getNotes(Im{16, 1});
        input2BinaryDivided = getNotes(Im{17, 1});
        input3BinaryDivided = getNotes(Im{18,1});
        
      %  for i = 1: 14
       %    figure('Name',strcat('part', int2str(i)), 'NumberTitle', 'off')
       %    imshow( input3BinaryDivided{i})
       % end

        strInput1 = writeIt(Im, input1BinaryDivided);
        strInput2 = writeIt(Im, input2BinaryDivided);
        strInput3 = writeIt(Im, input3BinaryDivided);
        
        display(strInput1);
        display(strInput2);
        display(strInput3);
end
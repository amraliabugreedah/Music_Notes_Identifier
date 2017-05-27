function [Im] = readImages()

    f=dir('.\myNotes\*.png');
    files={f.name};
    Im = {15};

    for k=1:numel(files);
        Im{k, 1}=imread(files{k});
        Im{k, 2}=files{k};
    end
    
    for i = 1: 15   %%% for loop to get binaryImage of each grayscale divided note

        binaryImage = myMainFunc(Im{i, 1});
        %figure
       % imshow(binaryImage);
        Im{i, 1} = binaryImage;
    
    end
    
    inputOTT = {'Input1.png', 'Input2.png', 'Input3.png'};
    
    for j = 16: 18 %%% for loop for the Input 1,2,3
        binaryImage = myMainFunc(inputOTT{1,j-15});
        Im{j,1} = binaryImage;
        Im{j,2} = inputOTT{1,j-15};
        
    end
    
    
    %for co = 1:13
        
    %    figure('Name',Im{co,2},'NumberTitle','off')
     %   imshow(Im{co,1});
        
   % end
    
    
    %%%%%%%%%%% i have all the input notes in col 1 Im{i, 1}//// and their names in col 2 Im{i, 2}
    %%%%%%%%%%% 

end
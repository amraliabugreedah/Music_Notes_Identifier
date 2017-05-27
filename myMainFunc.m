function [binaryImg] = myMainFunc(img)
%imgRead = imread(img);
%imshow(imgRead);
%return;
[r, ~, ~] = size(img);

if r < 15
 imgRead = imread(img);
else
    imgRead = img;
end
 m = myMedianFilter(imgRead);
 p = step1(m);
 p1kMat = step2(p);
 mMat = step3(p);
 mg = step4(p);
 vbsq = step5(mg, p1kMat, mMat);
 NDM = step6(vbsq);
 %display(NDM);
 binaryImg = toBinary(m, NDM);


end

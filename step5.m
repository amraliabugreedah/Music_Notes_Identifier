function [varianceBSqMat] = step5(mg, p1kMat, mMat)

        varianceBSqMat = zeros(1, 256);

        for k = 1: 256

        if (p1kMat(1, k)*(1-p1kMat(1,k)) > 0)
        varianceBSqMat(1, k) = (((mg*p1kMat(1, k)) - mMat(1, k))^2)/(p1kMat(1, k)*(1-p1kMat(1,k)));
        else
        varianceBSqMat(1, k) = 0;
        end

        
end
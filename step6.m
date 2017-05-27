function [kMax] = step6(varianceBSqMat)


        varianceMax = 0;
        kMax = 0;
        for k = 1: 256

            if (varianceBSqMat(1, k) > varianceMax)
                
                    varianceMax = varianceBSqMat(1, k);
                    kMax = k;
            end


        end


end
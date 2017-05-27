function [mMat] = step3(p)

            mMat = zeros(1,256);
            
            for k = 1: 256
                        
                m = 0;

                for i = 1: (k)
            
                m = m + (p(1,i)*(i-1));
                
                end

                mMat(1, k) = m;
            end
end
 pkg load signal;
 pkg load image;

 function trainingSet = getTrainingSetFrmImage(image)
   
   [r,c] = size(image)
   DF = zeros(r, c);
   
   N = 8;
     
   vectorArray = zeros((N .* N), 1);
   
   for i = 1 : N : r
        for j = 1 : N : c           
            f = image(i : i+N-1, j: j+N-1);
            df = dct2(f);
            vector = df(:);
                  
            if (i == 1 && j ==1)
                vectorArray = vector;         
            else                
                vectorArray = getVectorArrFrmDctMat(vectorArray, vector);
            endif
                              
        end;
   end;   
 
   trainingSet = vectorArray;
 endfunction
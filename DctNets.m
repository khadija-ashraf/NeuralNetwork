 pkg load signal;
 pkg load image;

 function compressedNN = dctNets()
    noOfImages = 6;
    uncompressedImageArray = loadQualityImages(false, 0);
    compressedImageArray = loadQualityImages(true, 15);
    
    
    for  i = 1 :1: noOfImages
        compressedImage = compressedImageArray(:,:,i); % Gets the ith matrix
        trainingSet = getTrainingSetFrmImage(compressedImage);
        noOfDctCoefficient = size(trainingSet, 2);  % no of columns of the array since each 
                                                    % column contains a singe DCT matrix.
        
        noOfInput = size(trainingSet, 1);           % no of rows of the array since size of 
                                                    % the rows is equal to the (8*8) matrix 
                                                    % all element vertically.               

        THETA1 = 0;
        THETA2 = 0;     
        init_w = 1;     
        learn=1;
        alpha=0.01;                                                  
        
        for j = 1:noOfDctCoefficient
            inputVector = trainingSet (:, j);                        
            [T1_DELTA, T2_DELTA] = dctNeuralNetwork(inputVector, 0, 0, 0, 0, 0.01);
        endfor       
       
    endfor         
   
 endfunction
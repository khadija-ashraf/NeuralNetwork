 pkg load signal;
 pkg load image;

 function imageArray = loadQualityImages(isCompressed, quality)
   %basePath = 'F:/Research/Octave/img';
   basePath = 'G:/Docs of Khadija/docs/Learning/Octave/img';
   
   image= imread(strcat(basePath,'/a.jpg'));
   image = rgb2gray(image);
   image = imresize (image, [304 304]);   
   
   if true(isCompressed) 
       imwrite(image, strcat(basePath, '/a1.jpg'),'quality', quality);  
       image = imread(strcat(basePath,'/a1.jpg'));
       image = gaussianBlur(image);
   endif
   
   imageArray = image
   
   
   % This image is grey colored, means it has only one color instead of having 3.
   image= imread(strcat(basePath,'/b.jpg'));
   image = imresize (image, [304 304]);
   if true(isCompressed) 
       imwrite(image, strcat(basePath, '/b1.jpg'),'quality', quality);  
       image = imread(strcat(basePath,'/b1.jpg'));
       image = gaussianBlur(image);
   endif
   
   imageArray = cat(3, imageArray, image); % creating an array of matrix  using 'cat'
   
   image= imread(strcat(basePath,'/c.bmp'));
   image = rgb2gray(image);
   image = imresize (image, [304 304]);
   
   if true(isCompressed) 
       imwrite(image, strcat(basePath, '/c1.jpg'),'quality', quality);  
       image = imread(strcat(basePath,'/c1.jpg'));
       image = gaussianBlur(image);
   endif
   
   imageArray = cat(3, imageArray, image); % creating an array of matrix  using 'cat'

   image= imread(strcat(basePath,'/d.jpg'));
   image = rgb2gray(image);
   image = imresize (image, [304 304]);
   
   if true(isCompressed) 
       imwrite(image, strcat(basePath, '/d1.jpg'),'quality', quality);  
       image = imread(strcat(basePath,'/d1.jpg'));
       image = gaussianBlur(image);
   endif
   
   imageArray = cat(3, imageArray, image); % creating an array of matrix  using 'cat'

   image= imread(strcat(basePath,'/e.jpg'));
   image = rgb2gray(image);
   image = imresize (image, [304 304]);
   
   if true(isCompressed) 
       imwrite(image, strcat(basePath, '/e1.jpg'),'quality', quality);  
       image = imread(strcat(basePath,'/e1.jpg'));
       image = gaussianBlur(image);
   endif
   
   imageArray = cat(3, imageArray, image); % creating an array of matrix  using 'cat'

   image= imread(strcat(basePath,'/f.jpg'));
   image = rgb2gray(image);
   image = imresize (image, [304 304]);
   
   if true(isCompressed) 
       imwrite(image, strcat(basePath, '/f1.jpg'),'quality', quality);  
       image = imread(strcat(basePath,'/f1.jpg'));
       image = gaussianBlur(image);
   endif
   
   imageArray = cat(3, imageArray, image); % creating an array of matrix  using 'cat'

   
 endfunction
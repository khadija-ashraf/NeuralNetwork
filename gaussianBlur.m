
function Ig = gaussianBlur(img)

  %# Create the gaussian filter with hsize = [5 5] and sigma = 2
  G = fspecial('gaussian',[5 5],2);
  %# Filter it
  Ig = imfilter(img,G,'same');

endfunction
%% image read and visualize
img = imread('peppers.png'); 
imshow(XXX);
title('Original Image');

%% convert gray scale - 1
grayImg = rgb2gray(XXX);
imshow(XXX);
title('Grayscale Image');

%% convert gray scale - 2
grayImg = im2gray(XXX);
imshow(XXX);
title('Grayscale Image');

%% denoise
originImage = imread('eight.tif');
figure, imshow(originImage)

% add noise with 0.02 gauss variance
noiseImage = imnoise(originImage,'salt & pepper',0.02);

filterImage = medfilt2(XXX);

imshowpair(XXX, XXX, 'montage')

title('noise image (Left) Vs. denoise image (Right)')

%% invert image
textImage = imread('text.png');
invertImage = imcomplement(XXX);
imshowpair(XXX, XXX, 'montage')

title('origin image (Left) Vs. invert image (Right)')

%% adjust image contrast
childImage = imread('pout.tif');
imshow(childImage)

adjustImage = imadjust(XXX);

imshowpair(XXX, XXX, 'montage')
title('origin image (Left) Vs. adjust image image (Right)')

%% image blurring 
cameraManImage = imread('cameraman.tif');

% blurred with a standard deviation of 2
blurredImage = imgaussfilt(XXX, XXX);  
montage({cameraManImage, blurredImage})
title('Original Image (Left) Vs. Gaussian Filtered Image (Right)')

%% image sharpening
peppersImg = imread('peppers.png');
imshow(peppersImg), title('Original Image');

% shrap with 'Radius' and 'Amount', defalut value is 1, 0.8
sharpendImage = imsharpen(XXX, 'XXX', XXX, 'XXX', XXX);
montage({peppersImg,sharpendImage})
title('Original Image (Left) Vs. Sharpened Image (Right)')

%% dilation
textImg = imread('text.png');

% make structure with square, size is 2
morphologyElement = strel('square',2);

dilateImg = imdilate(XXX, XXX);

imshow(textImg), title('Original')

imshowpair(textImg,dilateImg,'montage')
title('origin image (Left) Vs. dilate image image (Right)')

%% erosion
textImg = imread('text.png');

% make structure with square, size is 2
morphologyElement = strel('square',2);

erodedImage = imerode(XXX, XXX);

figure
imshow(textImg), title('Original')

imshowpair(textImg,erodedImage,'montage')
title('origin image (Left) Vs. eroded image image (Right)')

%% edge detection - sovel & canny
circuitImage = imread('circuit.tif');
imshow(circuitImage)

% apply sobel filter
edgeDetectionWithSobelFilter = edge(circuitImage,'XXXXX');

% apply canny filter
edgeDetectionWithCannyFilter = edge(circuitImage,'XXXXX');

imshowpair(edgeDetectionWithSobelFilter,edgeDetectionWithCannyFilter,'montage')
title('sobel edge (Left) Vs. canny edge (Right)')

%% contour detection
riceImage = imread('rice.png');

imshow(riceImage);

binarizedImage = imbinarize(XXX);

[Boundary,Label] = bwboundaries(XXX, 'noholes');

figure
imshow(label2rgb(Label, @jet, [.5 .5 .5]))
hold on
for k = 1:length(Boundary)
   boundary = Boundary{k};
   plot(boundary(:,2), boundary(:,1), 'w', 'LineWidth', 2)
end
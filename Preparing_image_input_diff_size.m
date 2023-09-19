img = imread("file01.jpg");
imshow(img)

% to view size fo image.

sz=size(img);

% InputLayer specifies the image size that network requires.

net=googlenet;
inlayer=net.Layers(1);
insz=inlayer.InputSize;

% To resize an image to match expected input size.
% imgresz = imresize(img,[numrows numcols]);

img=imresize(img,[224 224]);
imshow(img);
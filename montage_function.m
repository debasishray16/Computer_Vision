ls *.jpg
net = googlenet;

imds = imageDatastore("file*.jpg");

montage(imds);

% This created augmented Datastore from imds image Datastore.
% Process of RGB colour into GrayScale colour.
auds=augmentedImageDatastore([224,224],imds,"ColorPreprocessing","gray2rgb");

% To store predictions in array form.
preds=classify(net,auds);
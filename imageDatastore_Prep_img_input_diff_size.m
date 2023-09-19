ls *.jpg
net = googlenet;

% refers file with extension .jpg in folder
imds=imageDatastore("*.jpg");

% An augmented image datastore can perform simple preprocessing on an entire collection of images.
% auds = augmentedImageDatastore([r c],imds)
auds=augmentedImageDatastore([224,224],imds);

% You can use the augmented image datastore as input to the classify function. 
% Before each image is classified, it will be preprocessed using the methods that you specified when you created the datastore.

preds=classify(net,auds);
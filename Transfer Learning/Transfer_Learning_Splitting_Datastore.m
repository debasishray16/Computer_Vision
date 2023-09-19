
% You can use splitEachLabel function to divide images in datastore into two separate datastores.
% [ds1,ds2] = splitEachLabel(imds,p);
% The proportion p (a value from 0 to 1) indicate proportion of images with each label from imds that should be contained in ds1. 
% The remaining files are assigned to ds2.

load pathToImages
flwrds = imageDatastore(pathToImages,"IncludeSubfolders",true,"LabelSource","foldernames");


% flwrds is splitted into flwrTrain, flwrTest in proportion of 0.6.
[flwrTrain,flwrTest]=splitEachLabel(flwrds,0.6);


% flwrds is splitted into flwrTrain, flwrTest in proportion of 0.8 and data
% are stored in orderly and hence, They can be randomized.

[flwrTrain,flwrTest]=splitEachLabel(flwrds,0.8,"randomized");
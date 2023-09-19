
% Creates datastore of flowers

load pathToImages
flwrds = imageDatastore(pathToImages,"IncludeSubfolders",true);
flowernames = flwrds.Labels;





% Creating Labels
% "LabelSource" automatically determines the labels from folder names by specifying.

flwrds=imageDatastore(pathToImages,"IncludeSubfolders",true,"LabelSource","foldernames");

% Displaying the data.
flowernames = flwrds.Labels;

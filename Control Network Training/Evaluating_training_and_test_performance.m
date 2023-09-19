load pathToImages
load trainedFlowerNetwork flowernet info

plot(info.TrainingLoss);

% creates a datastore of the flower images
dsflowers = imageDatastore(pathToImages,"IncludeSubfolders",true,"LabelSource","foldernames");
[trainImgs,testImgs] = splitEachLabel(dsflowers,0.99);
resizeTestImgs = augmentedImageDatastore([224 224],testImgs);

flwrPreds = classify(flowernet,resizeTestImgs);
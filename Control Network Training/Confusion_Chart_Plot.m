load pathToImages
load trainedFlowerNetwork
flwrds = imageDatastore(pathToImages,"IncludeSubfolders",true,"LabelSource","foldernames");
[trainImgs,testImgs] = splitEachLabel(flwrds,0.99);
resizeTestImgs = augmentedImageDatastore([224 224],testImgs);
flwrPreds = classify(flowernet,resizeTestImgs);

% Comaring the predictions with the known classification.
flwrActual=testImgs.Labels;

% nnz() to determine the number of elements that match.
numCorrect=nnz(flwrActual==flwrPreds);

% numel() to calculate the number of elements.
fracCorrect=numCorrect/numel(flwrPreds);

confusionchart(flwrActual,flwrPreds);

% The confusionchart function calculates and displays the confusion matrix for the predicted classifications.
% confusionchart(knownclass,predictedclass)
% The (j,k) element of the confusion matrix is a count of how many images from class j the network predicted to be in class k. Hence, diagonal elements represent correct classifications; off-diagonal elements represent misclassifications.
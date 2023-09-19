
% sdgm=stochastic gradient descent with momentum
opts=trainingOptions("sgdm");


% You can specify any number of settings as optional name-value pairs in the trainingOptions function.
% opts = trainingOptions("sgdm","Name",value)

opts=trainingOptions("sgdm","InitialLearnRate",0.001);
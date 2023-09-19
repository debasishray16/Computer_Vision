img = imread("C:\Users\Debasish Ray\Downloads\Submit the advertisement.png");
imshow(img)
net = googlenet;
categorynames = net.Layers(end).ClassNames;

% scores is variable.
[pred,scores]=classify(net,img);

bar(scores);

% Because graph is too small.
highscores=scores>0.01;

result=scores(highscores);
bar(result);

% labelling the graph
xticklabels(categorynames(highscores));
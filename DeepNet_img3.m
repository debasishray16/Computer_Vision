% importing file2

img3=imread("file03.jpg");
imshow(img3);


[pred,scores2]=classify(net,img3);
bar(scores2);

highscores2=scores2>0.01;

result2=scores(highscores2);
bar(result2);

% Printing names
xticklabels(categorynames(highscores2))

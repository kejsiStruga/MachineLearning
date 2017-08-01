% @authors Kejsi Struga (kejsistruga6@gmail.com)
% @date    2017-07-30

function J = computeCostMulti(X, y, theta)

%%The cost function remains the same; wont change bcz of the fact that we have multiple variable !

m = length(y); % number of training examples
J = 0;

hypothesis = X * theta;

errors = hypothesis .- y;

squareOfErrors = (errors).^2;
sumOfSquareErrors = sum(squareOfErrors);

J = 1/(2 * m) * sumOfSquareErrors;

end
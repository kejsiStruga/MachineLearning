% @authors Kejsi Struga (kejsistruga6@gmail.com)
% @date    2017-07-30

function [theta, J_history] = gradientDescent(X, y, theta, alpha, numberOfIterations)

m = length(y); % number of training examples
J_history = zeros(numberOfIterations, 1);

    for iter = 1:numberOfIterations

        hypothesis = X * theta;

        errors = hypothesis .- y;

        X_column1 = X(:, 1);

        X_column2 = X(:, 2);

        theta(1, 1) = theta(1, 1) - (alpha * (1/m) * errors' * X_column1);
        theta(2, 1) = theta(2, 1) - (alpha * (1/m) * errors' * X_column2);

        J_history(iter) = computeCost(X, y, theta);

    end

end
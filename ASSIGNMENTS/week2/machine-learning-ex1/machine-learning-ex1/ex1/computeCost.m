% @authors Kejsi Struga (kejsistruga6@gmail.com)
% @date    2017-07-30

function J = computeCost(X, y, theta)


%%% 1 LINE FORMULA: errors = 1/(2*length(y))*(sum((X*theta.-y).^2))
%%% FOR MORE EXPLANATION SEE BELOW THE STEP BY STEP SOLUTION 

%computeCost FOR LINEAR REGRESSION (WHICH IS SQUARED ERRORS FUNCTION) !

	m = length(y); 

	J = 0;

	%We multiply since X has dims: 97 x 2 and theta has dims: 2 x 1 
	%Corresponds to Htheta(X)
	hypothesis = X * theta;

	%The errors function contains the differences of the values from the line ?; for each el. => '.-'
	%This part corresponds to the (Htheta(X)-Y)
	errors = hypothesis .- y;

	%because we want EACH error to be squared, hence the '.^' symbol !!!
	%this is the part of formula: (Htheta(X)-Y)^2 
	squareOfErrors = (errors).^2;

	%Now we want the sum of all squared errors; squared errors are the elements of the above vector, hence we use sum(vector) method to get
	%the final answer of the sum of all elements !
	sumOfSquareErrors = sum(squareOfErrors);

	%Finally apply the multiplication at the beginning of the formula! -> J(theta_0,theta_1) = 1/2m * sum(<squaredErrors>) 
	J = 1/(2 * m) * sumOfSquareErrors;

end

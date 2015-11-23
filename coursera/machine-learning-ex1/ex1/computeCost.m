function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% 
% Squared error function X and y are not scalar values, but matrices whose
% rows represent the examples from the training set.
%
%{
Prediction = DataMatrix * Parameters
Prediction Matrices = h_theta(x) = theta^Tx = theta_0 + theta_1x_1 where x is
input for for hypothesis
J = 
1) Summation of all ( Prediction - Actual aka y )^2
2) * 1 / ( 2 * m )
Once you have completed the function, the next step in ex1.m will run
computeCost once using initialized to zeros, and you will see the cost
printed to the screen. You should expect to see a cost of 32.07.
%}

% Make the prediction based on Xinputs and theta
% Prediction = DataMatrix * Parameters
predictionMatrix = X * theta;

% Find difference
errorMatrix = y - predictionMatrix;

%square it: http://www.mathworks.com/matlabcentral/answers/27627
errorMatrix = errorMatrix.^2;

%sum every element: http://www.mathworks.com/help/matlab/ref/sum.html
sumOfErrors = sum( errorMatrix );

%final J predictor
J = sumOfErrors / ( 2 * m );


% =========================================================================

end

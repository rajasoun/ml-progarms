function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression with multiple variables
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== Compute Cost ======================
% 	Original Formala : http://bit.ly/2KVLslg

% Each observation is stored  as a row in  X Matrix
% To take into account the intercept term theta_zero,
% we add an additional 1st column to X and set it to all ones. 
% This allows us to treat theta_zero as simply another `feature'.

% Using Matrix Multiplication
% Cost Function can thus be depicted in Matrix Multiplication as below
% X' means  Transpose of Matrix X

J = (1/(2*m)) * (X * theta - y)' * (X * theta - y);

% =============================================================

end

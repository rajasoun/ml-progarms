function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    %   Original Formala : http://bit.ly/2LlH7Ee
    %            
    % Each observation is stored  as a row in  X Matrix
    % To take into account the intercept term theta_zero,
    % we add an additional 1st column to X and set it to all ones. 
    % This allows us to treat theta_zero as simply another `feature'.

    % Using Matrix Multiplication
    % Gradient Descent can thus be depicted in Matrix Multiplication as below
    % X' means  Transpose of Matrix X

    theta = theta - (alpha/m) * (X' * (X * theta - y));

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    % disp(J_history(iter));
end
    disp(min(J_history));
end

function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters;
    [cost grad] = costFunction(theta,X,y);
    theta = theta - alpha*grad;
    J_history(iter) = cost;
end;

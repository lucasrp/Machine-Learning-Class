fprintf('Plotting Data ...\n')
data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples
theta = zeros(2,1);
X = [ones(m,1) X];
% Plot Data
% Note: You have to complete the code in plotData.m
plotData(X, y);

Cost = [computeCost(X, y, theta)]

Cost = [Cost; gradientDescent]

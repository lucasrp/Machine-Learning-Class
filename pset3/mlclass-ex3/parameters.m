function result = parameters()

load('ex3data1.mat');
% Select 1000 training examples to be set apart
m = size(X, 1);
rand_indices = randperm(m);
cross_validation_set_X = X(rand_indices(1:1000), :);
cross_validation_set_y = y(rand_indices(1:1000), :);
training_set_X = X(rand_indices(1001:end), :);
training_set_y = y(rand_indices(1001:end), :);

    lambdas = [0: 0.01: 0.15];
    number_of_iterations = [1:10:50];
    result = zeros(0,3);
    for i = 1:size(lambdas)(2)
        for j = 1:size(number_of_iterations)(2)
            result = [result;lambdas(i) number_of_iterations(j) 0];
        end
    end

    for i = 1:size(result)(1)
        fprintf('\n number %i of %i \n \n \n', i, size(result)(1))
        all_theta = oneVsAll(training_set_X, training_set_y, 10, result(i,1), result(i,2));
        pred = predictOneVsAll(all_theta, cross_validation_set_X);
        result(i,3) = mean(double(pred == cross_validation_set_y))*100;
    end




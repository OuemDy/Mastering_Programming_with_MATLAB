% STATISTICAL DATA ANALYSIS
% Olivia Marín 11/10/2022
% Compute the stadard deviation distance

function [dist] = std_distance(data,x)

if size(data,1) == 1 || size(data,2) == 1
    
    X = mean(data);
    A = x - X;
    dist = A / std(data);
    
else
    error('Please insert data in a single-row/column vector')
end
end
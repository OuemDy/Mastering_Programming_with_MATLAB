% DATA REPRESENTATION
% Olivia Marín 11/10/2022
% Answer the questions about the following data set:

load('nodetraffic.mat')

% 1. What is the mean of the dataset, rounded to the nearest integer?
answer_1 = round(mean(nodetraffic));

% 2. What is the standard deviation of the dataset, rounded to the nearest integer?
answer_2 = round(std(nodetraffic));

% 3. If we decide to classify the traffic for a node as suspicious if the traffic
%    through the node has a standard deviation distance (see previous matlab grader
%    problem on "standard deviation distance") to the mean that is larger than 6,
%    how many instances in nodetraffic are suspicious and warrant further investigation?

dist = answer_1 + answer_2 * 6;
answer_3 = sum(nodetraffic > dist);
function [x] = fibo(v)

% MATLAB EXERCISE
% Write a recursive function that computes the elements of the Fibonacci series.
% Fibonaci: 1 1 2 3 5 8 11 ...
% By Olivia Marin

if ischar(v) == 1 % discard strings
    error('No characters allowed, please insert a positive integer')
    
elseif isempty(v) == 1 % discard empty vector
    error('No empty vectors allowed, please insert a positive integer')
    
elseif mod(v,1) ~= 0 % discard decimals
    error('No decimal numbers allowed, please insert a positive integer')
    
elseif isa(v,'double') ~= 1 % discard vector
    error('No vector allowed, please insert a positive integer')
    
elseif v < 0 % discard negative numbers and zero
    error('Nor negative numbers allowed, please insert a positive integer')
    
else
    
    if v == 1 || v == 0 % base case
        x = 1;
        
    else % recursive case
        x = fibo(v-1)+fibo(v-2);
    end
end

end
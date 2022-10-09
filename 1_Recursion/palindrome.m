function [x] = palindrome(v)

% MATLAB EXERCISE
% Write a recursive function that determines if the input is a palindrome.
% By Olivia Marin

if isempty(v) == 1 % discard empty vector
    error('No empty vectors allowed, please insert a vector')
    
else
    if length(v) <= 1 % base case 1
        x = 1;
    elseif length(v) == 2 % base case 2
        x = v(1) == v(end);
    else % recursive case
        x = v(1) == v(end) && palindrome(v(2:end-1));
    end
end
end
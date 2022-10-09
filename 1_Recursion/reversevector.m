function [x] = reversevector(v)

% MATLAB EXERCISE
% Write a recursive function that returns a vector with the element of in input vector reversed.
% By Olivia Marin

if ischar(v) == 1 % discard strings
    error('No characters allowed, please insert a vector')
    
elseif isempty(v) == 1 % discard empty vector
    error('No empty vectors allowed, please insert a vector')
    
else
    
    if length(v) <= 1 % base case
        x = v;
        
    else % recursive case
        x = [reversevector(v(2:end)),v(1)];
    end
end

end


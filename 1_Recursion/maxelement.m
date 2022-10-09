function [x] = maxelement(v)

% MATLAB EXERCISE
% Write a recursive function to find the maximum element in a vector.
% By Olivia Marin

if ischar(v) == 1 % discard strings
    error('No characters allowed, please insert a number')
    
else
    
    if length(v) <= 1 % base case
        x = v;
        
    else % recursive case
        x = maxelement(v(2:end));
        if v(1)>x
            x = v(1);
        end
    end   
end

end
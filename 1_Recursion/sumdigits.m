function [result] = sumdigits(num)

% MATLAB EXERCISE
% Write a recursive function to sum the individual digits of an input number.
% By Olivia Marin

% Set previous settings

if ischar(num) == 1 % discard strings
    error('No characters allowed, please insert a number')
    
else
     
    num = abs(num); % only positive numbers
        
    if mod(num,1) ~= 0 % take on account decimal numbers
        decimal = mod(num,1);
        factor = length(num2str(decimal))-2; % count decimal digits and exclude "0" and "."
        factor = 10^factor;
        num = num*factor;
    end
    
    % Set cases
    
    if num <10 % base case
        result = fix(num);
        
    elseif num >= 10 % recursive case
        result = mod(num,10) + sumdigits(fix(num/10));
        
    end    
end

end

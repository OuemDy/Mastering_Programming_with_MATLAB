function out = pairkeys(varargin)

% MATLAB EXERCISE
% Write a function that pairs up the keys and the respective values from unspecified number of input
% For instance: pairkeys('name','John Smith','age',32,'children',{'Joe','Jill'})
% By Olivia Marin

if nargin>0 && rem(nargin, 2) == 0
    out = cell(nargin/2, 2);
    for ii = 1:nargin
        if rem(ii,2) ~= 0
            if ischar(varargin{ii}) 
                out{(ii+1)/2,1} = varargin{ii};
            else
                out ={};
                return;
            end
        else
            out{ii/2,2} = varargin{ii};
        end
    end
else
    out = {};
end  
end


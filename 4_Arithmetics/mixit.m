function mixit(nameN,nameM)

% MATLAB EXERCISE
% Write a function that mix a multi-column audio recording into one single record.
% namex is the number of the first track WITH extension
% namey is the number of the second track WITH extension

% Both files should be in the current directory

% By Olivia Marin

N = audioread(nameN);
M = audioread(nameM);

if size(N,2) ~= length(M) % check for same number of columns
    v = [];
else
    N = N(:);
    M = 2*double(M)/(2^16-1)-1;
    v = M*N;
    if max(abs(v)) > 1
        v = v/max(abs(v));
    end
end

sound(v,1) % play it at fs 1
end
function get_edge(input_name)

% MATLAB EXERCISE
% Write a function that detects the edge of objects in an image. Both the input and the output arguments are grayscale images, that is , atrices 
%  of uint8 values. 

% input_name is the name of the image WITHOUT extension. Save the image in the current folder 

% Automatically detecting edges in images is an important task in image processing. An edge detector takes an input image and generates another image where the edges in the 
% original image are highlighted by gray/white colors while other pixels are black. For each 3x3-pixel subset A, of an image, we can calculate the magnitude of the gradient at the 
% center pixel of A as a weighted sum of all the values in A. 

% One common technique is called the Sobel operator specified as M = sqrt(Sx^2 + Sy^2)where Sx and Sy can be defined as,
% Sx = [[-1 0 1] [-2 0 2] [-1 0 1]:A and Sy = [[1 2 1] [0 0 0] [-1 -2 -1]:A
% In the script you can call the image as M = imread('CocaCola.png')

% By Olivia Marin


input_name = num2str(input_name);
input_image = imread([input_name,'.png']); % call the image

input_image = uint8(input_image);
input_image = double(input_image); 
filtered_image = zeros(size(input_image)); 
  
Sx = [-1 0 1; -2 0 2; -1 0 1]; 
Sy = [-1 -2 -1; 0 0 0; 1 2 1]; 

for i = 1:size(input_image, 1) - 2 
    for j = 1:size(input_image, 2) - 2 
        Gx = sum(sum(Sx.*input_image(i:i+2, j:j+2))); 
        Gy = sum(sum(Sy.*input_image(i:i+2, j:j+2))); 
        filtered_image(i+1, j+1) = sqrt(Gx.^2 + Gy.^2); 
         
    end
end
filtered_image = filtered_image(2:(end-1), 2:(end-1));    
output = uint8(filtered_image); 
imshow(output)

end
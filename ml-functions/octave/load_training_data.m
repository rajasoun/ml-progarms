function [X, y, m] = load_training_data(file)
%load_data Loads CSV Data  
%   load_data(filename) Loads CSV Data from the file
	
	%% Load Data
	training_data = load(file);
	ncols = size(training_data,2);
	X = training_data(:, 1:ncols-1);
	y = training_data(:, ncols);
	m = length(y);

end
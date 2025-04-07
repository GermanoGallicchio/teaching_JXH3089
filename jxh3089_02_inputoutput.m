%% JXH-3089 
% Computational psychophysiology workshop

clear all; 

%% identify the current folder 
% 1. outside of matlab, open the folder and see its content

currentFolder = pwd;

%% create a matrix of random numbers
% 1. save it somewhere on the hard drive
% 2. check its content

myMatrix = randn(5,5);

writematrix(myMatrix, [currentFolder '\myRandomMatrix.csv']); % save as comma separated file that can be interpreted as table by Excel

save([currentFolder '\myRandomMatrix'],"myMatrix"); % this saves an "m" file, MATLAB's native data file format

%%

% Section 10: Basic File I/O
data = 1:10;
save('data.mat', 'data'); % Save data to a MAT file
disp('Data saved to file "data.mat".');
loaded_data = load('data.mat'); % Load data from file
disp('Loaded data:');
disp(loaded_data.data);


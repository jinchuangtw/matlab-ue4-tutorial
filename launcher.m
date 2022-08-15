clear; close all; clc;

% Stereo camera parameters
focalLength    = [1109, 1109]; % In pixels
principalPoint = [640, 360];   % In pixels [x, y]
imageSize      = [720, 1280];  % In pixels [mrows, ncols]
baseline       = 3;          % In meters

% Open the model
modelName = 'stereoVideoGenerator';
open_system(modelName);
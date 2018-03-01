% Face Recognition on Ground Truth Photos and Sketches
% Nannan Wang, 2016.03.15

clear;
clc;
close all;

addpath('Codes');
addpath('Codes/Utilities');

nim = 338;
nrank = 50;

Path = 'Data/';

Methods = {'Photo'};

% Load Data
if exist([Path,'Data_Photo.mat','file']) ~= 2
    %     [trainindex testindex] = DataPartition(nTrain,nTS,nTA,nTX);
    imageindex = 1:nim;
    Data = LoadAllData(imageindex,Path,Methods);
    save([Path,'Data_Photo.mat'],'Data','-v7.3');
else
    load([Path,'Data_Photo.mat']);
end

GR = Data{1};

for k = 1:length(Methods)
    
    Gallery = Data{k+1};
    counter = zeros(nrank,1);
    for i = 1:nim
        
        fprintf('The %d-th Method: %s, %d/%d\n',k,Methods{k},i,nim);
        probe_im = GR(:,i);
        cnt = SSIM_Classification(reshape(probe_im,250,200),Gallery,i,nrank);
        counter = cnt + counter;
        
    end
    
    Result{k} = counter/nim;
    
end
save('Data/Result_Photo.mat','Result');
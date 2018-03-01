% Face Recognition with VIF
% Nannan Wang, 2016.03.11

clear;clc;

addpath('Codes');
addpath('Codes/Utilities');
addpath('Codes/VIF');

nim = 338;
nrank = 50;

Path = 'Data/';

Methods = {'LLE','SSD','MRF','MWF','Bayesian'};

% Load Data
if exist([Path,'Data.mat','file']) ~= 2
    %     [trainindex testindex] = DataPartition(nTrain,nTS,nTA,nTX);
    imageindex = 1:nim;
    Data = LoadAllData(imageindex,Path,Methods);
    save([Path,'Data.mat'],'Data','-v7.3');
else
    load([Path,'Data.mat']);
end

GR = Data{1};

for k = 2:length(Methods)
    
    Gallery = Data{k+1};
    counter = zeros(nrank,1);
    
    if k == 2
        load('Data/temp_Result_CUHK_VIF.mat');
        
        for i = 256:nim
            
            fprintf('The %d-th Method: %s, %d/%d\n',k,Methods{k},i,nim);
            probe_im = GR(:,i);
            cnt = VIF_Classification(reshape(probe_im,250,200),Gallery,i,nrank);
            counter = cnt + counter;
            
        end
        
    else
        
        for i = 1:nim
            
            fprintf('The %d-th Method: %s, %d/%d\n',k,Methods{k},i,nim);
            probe_im = GR(:,i);
            cnt = VIF_Classification(reshape(probe_im,250,200),Gallery,i,nrank);
            counter = cnt + counter;
            
        end
        
    end
    
    Result{k} = counter/nim;
    
end
save('Data/Result_CUHK_VIF.mat','Result');

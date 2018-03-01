% Face Recognition with SSIM
% Nannan Wang, 2016.03.11

clear;clc;

addpath('Codes');
addpath('Codes/Utilities');

nim = 338;
nrank = 338;

Path = 'Data/';

Methods = {'Photo','LLE','SSD','MRF','MWF','Bayesian'};

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

for k = 1:length(Methods)
    
    Gallery = Data{k+1};
    counter = zeros(nrank,1);
    for i = 1:nim
        
        fprintf('The %d-th Method: %s, %d/%d\n',k,Methods{k},i,nim);
        probe_im = GR(:,i);
        cnt = KNN_Classification(probe_im,Gallery,i,nrank);
        counter = cnt + counter;
        
    end
    
    Result{k} = counter/nim;
    
end
save('Data/Result_CUHK_KNN.mat','Result');


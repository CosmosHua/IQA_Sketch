% Eigenface: Face Recognition based on Synthesized Sketches or Photos
% Written by Nannan Wang
% 2015.03.20
% Xidian University
% nannanwang.xidian@gmail.com
% Recognition Methods: Eigenface, Fisherface, NLDA, RSLDA, SRC

clear;
clc;
close all;

addpath('Codes/Utilities');
addpath('Codes/Eigenface');

Path = 'Data/';
nTrain = 150;
nTotal = 338;

nrank = 338;
nrandom = 100;

Methods = {'LLE','SSD','MRF','MWF'};

Eigen_LLE = zeros(nrank,1);
Eigen_SSD = zeros(nrank,1);
Eigen_MRF = zeros(nrank,1);
Eigen_MWF = zeros(nrank,1);

for counter = 1:nrandom
    
    fprintf('Random test %d/100\n',counter);
    
    index = randperm(nTotal);
    trainindex = index(1:nTrain);
    testindex  = index(nTrain+1:end);
    Data = LoadAllData(trainindex,testindex,Path,Methods);
    
    index_set(counter).trainindex = trainindex;
    index_set(counter).testindex  = testindex;
    
    Eigenface_Result = Eigenface_Classification(Methods,Data,nTrain,nrank);
   
    Eigen_LLE = Eigenface_Result(:,1) + Eigen_LLE;
    Eigen_SSD = Eigenface_Result(:,2) + Eigen_SSD;
    Eigen_MRF = Eigenface_Result(:,3) + Eigen_MRF;
    Eigen_MWF = Eigenface_Result(:,4) + Eigen_MWF;
       
end

Eigen_LLE =  Eigen_LLE/nrandom;
Eigen_SSD =  Eigen_SSD/nrandom;
Eigen_MRF =  Eigen_MRF/nrandom;
Eigen_MWF =  Eigen_MWF/nrandom;

Result_Eigenface.indexset = index_set;
Result_Eigenface.Eigen_LLE = Eigen_LLE;
Result_Eigenface.Eigen_SSD = Eigen_SSD;
Result_Eigenface.Eigen_MRF = Eigen_MRF;
Result_Eigenface.Eigen_MWF = Eigen_MWF;

save('Data/Result_Eigenface.mat','Result_Eigenface');

colorset = [0  0   0;
           160 32 240;
           0  255 255;
           56 94  15;
           255 0 255;
           255 97 0;
           128 42 42;
           0 199 140;
           0 0 255];
       
colorset = colorset./255;

figure;
numindex = nrank;
plot(1:numindex,100*Eigen_LLE(1:numindex),'-','Color',colorset(1,:),'LineWidth',3);
hold on;
plot(1:numindex,100*Eigen_SSD(1:numindex),'-','Color',colorset(8,:),'LineWidth',3);
plot(1:numindex,100*Eigen_MRF(1:numindex),'-','Color',colorset(9,:),'LineWidth',3);
plot(1:numindex,100*Eigen_MWF(1:numindex),'-','Color',colorset(2,:),'LineWidth',3);
xlabel('Rank');
ylabel('Recognition rate (%)');
axis([1 numindex 0 100]);
legend('LLE','SSD','MRF','MWF','Location','SouthEast');
title('Eigenface');

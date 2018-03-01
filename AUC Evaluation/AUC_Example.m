%==========================================================================
% Image Quality Assessment (IQA) on Synthesized Sketches
% Written by Nannan Wang, May 10, 2017, nnwang@xidian.edu.cn
%==========================================================================

clear;clc;close all;

addpath('Codes');
addpath('Codes/VIF');
warning off;

resultpath = 'Data/Result/';

load(['Data/Result/IQA_SynSketch_LLE.mat']);
load(['Data/Result/IQA_SynSketch_MWF.mat']);
load(['Data/Result/IQA_SynSketch_MRF.mat']);
load(['Data/Result/IQA_SynSketch_SSD.mat']);

% ind = 0:0.001:0.35;
ind = [0.15:0.001:0.35];
[LLE_GMSD,SSD_GMSD,MRF_GMSD,MWF_GMSD] = DrawFigure2(S_MWF_GMSD_rs,S_MRF_GMSD_rs,...
    S_SSD_GMSD_rs,S_LLE_GMSD_rs,ind,'GMSD');
AUC_GMSD.index = ind;
AUC_GMSD.LLE = LLE_GMSD;
AUC_GMSD.SSD = SSD_GMSD;
AUC_GMSD.MRF = MRF_GMSD;
AUC_GMSD.MWF = MWF_GMSD;
save([resultpath,'AUC_GMSD.mat'],'AUC_GMSD');

% ind = [0:0.001:0.85];
ind = [0.6:0.001:0.8];
[LLE_FSIM,SSD_FSIM,MRF_FSIM,MWF_FSIM] = DrawFigure(S_MWF_FSIM_rs,S_MRF_FSIM_rs,...
    S_SSD_FSIM_rs,S_LLE_FSIM_rs,ind,'FSIM');
AUC_FSIM.index = ind;
AUC_FSIM.LLE = LLE_FSIM;
AUC_FSIM.SSD = SSD_FSIM;
AUC_FSIM.MRF = MRF_FSIM;
AUC_FSIM.MWF = MWF_FSIM;
save([resultpath,'AUC_FSIM.mat'],'AUC_FSIM');

% ind = [0:0.001:0.85];
ind = [0.2:0.001:0.8];
[LLE_SSIM,SSD_SSIM,MRF_SSIM,MWF_SSIM] = DrawFigure(S_MWF_SSIM_rs,S_MRF_SSIM_rs,...
    S_SSD_SSIM_rs,S_LLE_SSIM_rs,ind,'SSIM');
AUC_SSIM.index = ind;
AUC_SSIM.LLE = LLE_SSIM;
AUC_SSIM.SSD = SSD_SSIM;
AUC_SSIM.MRF = MRF_SSIM;
AUC_SSIM.MWF = MWF_SSIM;
save([resultpath,'AUC_SSIM.mat'],'AUC_SSIM');

% ind = [0:0.001:0.18];
ind = [0.02:0.001:0.16];
[LLE_VIF,SSD_VIF,MRF_VIF,MWF_VIF] = DrawFigure(S_MWF_VIF_rs,S_MRF_VIF_rs,...
    S_SSD_VIF_rs,S_LLE_VIF_rs,ind,'VIF');
AUC_VIF.index = ind;
AUC_VIF.LLE = LLE_VIF;
AUC_VIF.SSD = SSD_VIF;
AUC_VIF.MRF = MRF_VIF;
AUC_VIF.MWF = MWF_VIF;
save([resultpath,'AUC_VIF.mat'],'AUC_VIF');

fprintf('The mean GMSD score of LLE, SSD, MRF, MWF are %f %f %f %f\n',...
    mean(S_LLE_GMSD_rs),mean(S_SSD_GMSD_rs),mean(S_MRF_GMSD_rs),mean(S_MWF_GMSD_rs));

fprintf('The mean FSIM score of LLE, SSD, MRF, MWF are %f %f %f %f\n',...
    mean(S_LLE_FSIM_rs),mean(S_SSD_FSIM_rs),mean(S_MRF_FSIM_rs),mean(S_MWF_FSIM_rs));

fprintf('The mean SSIM score of LLE, SSD, MRF, MWF are %f %f %f %f\n',...
    mean(S_LLE_SSIM_rs),mean(S_SSD_SSIM_rs),mean(S_MRF_SSIM_rs),mean(S_MWF_SSIM_rs));

fprintf('The mean VIF score of LLE, SSD, MRF, MWF are %f %f %f %f\n',...
    mean(S_LLE_VIF_rs),mean(S_SSD_VIF_rs),mean(S_MRF_VIF_rs),mean(S_MWF_VIF_rs));
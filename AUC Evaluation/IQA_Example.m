%==========================================================================
% Image Quality Assessment (IQA) on Synthesized Sketches
% Written by Nannan Wang, May 10, 2017, nnwang@xidian.edu.cn
%==========================================================================

clear;clc;

addpath('Codes');
addpath('Codes/VIF');
warning off;

Nim = 338;

% LLE/MWF/SNS/SNS-SVR/TFSPS
refSketchpath = 'Data/Sketch/';
synSketchpath = 'Data/Synthesized Sketch/';

METHODS = {'LLE','SSD','MRF','MWF'};
    
%% Synthesized Sketch, Reference Sketch
S_LLE_SSIM_rs = zeros(Nim,1);
S_LLE_VIF_rs  = zeros(Nim,1);
S_LLE_FSIM_rs = zeros(Nim,1);
S_LLE_GMSD_rs = zeros(Nim,1);

S_SSD_SSIM_rs = zeros(Nim,1);
S_SSD_VIF_rs  = zeros(Nim,1);
S_SSD_FSIM_rs = zeros(Nim,1);
S_SSD_GMSD_rs = zeros(Nim,1);

S_MRF_SSIM_rs = zeros(Nim,1);
S_MRF_VIF_rs  = zeros(Nim,1);
S_MRF_FSIM_rs = zeros(Nim,1);
S_MRF_GMSD_rs = zeros(Nim,1);

S_MWF_SSIM_rs = zeros(Nim,1);
S_MWF_VIF_rs  = zeros(Nim,1);
S_MWF_FSIM_rs = zeros(Nim,1);
S_MWF_GMSD_rs = zeros(Nim,1);

for i = 1:Nim
    
    fprintf('Synthesized Sketches, Reference Sketch, Processing %d/%d\n',i,Nim);
    
    refim = imread([refSketchpath,num2str(i),'_0.jpg']);
    if size(refim,3) == 3
        refim = rgb2gray(refim);
    end
    refim = double(refim);
    
    % LLE
    im = imread([synSketchpath,num2str(i),'_1.jpg']);
    [h w ch] = size(im);
    im = double(im);
    
    index_width  = 1:200;
    index_height = 1:250;
    
    S_LLE_SSIM_rs(i) = FR_SSIM(refim(index_height,index_width),im);
    S_LLE_VIF_rs(i)  = vifvec(refim(index_height,index_width),im);
    S_LLE_FSIM_rs(i) = FeatureSIM(refim(index_height,index_width),im);
    S_LLE_GMSD_rs(i) = FR_GMSD(refim(index_height,index_width),im);
    
    % SSD
    im = imread([synSketchpath,num2str(i),'_2.jpg']);
    if size(im,3) == 3
        im = rgb2gray(im);
    end
    [h w ch] = size(im);
    im = double(im);
    
    S_SSD_SSIM_rs(i) = FR_SSIM(refim(index_height,index_width),im);
    S_SSD_VIF_rs(i)  = vifvec(refim(index_height,index_width),im);
    S_SSD_FSIM_rs(i) = FeatureSIM(refim(index_height,index_width),im);
    S_SSD_GMSD_rs(i) = FR_GMSD(refim(index_height,index_width),im);
    
    % MRF
    im = imread([synSketchpath,num2str(i),'_3.jpg']);
    [h w ch] = size(im);
    im = double(im);
    
    S_MRF_SSIM_rs(i) = FR_SSIM(refim(index_height,index_width),im);
    S_MRF_VIF_rs(i)  = vifvec(refim(index_height,index_width),im);
    S_MRF_FSIM_rs(i) = FeatureSIM(refim(index_height,index_width),im);
    S_MRF_GMSD_rs(i) = FR_GMSD(refim(index_height,index_width),im);
    
    %MWF
    im = imread([synSketchpath,num2str(i),'_4.jpg']);
    [h w ch] = size(im);
    im = double(im);
    
    S_MWF_SSIM_rs(i) = FR_SSIM(refim(index_height,index_width),im);
    S_MWF_VIF_rs(i)  = vifvec(refim(index_height,index_width),im);
    S_MWF_FSIM_rs(i) = FeatureSIM(refim(index_height,index_width),im);
    S_MWF_GMSD_rs(i) = FR_GMSD(refim(index_height,index_width),im);
    
end

save('Data/Result/IQA_SynSketch_LLE.mat','S_LLE_FSIM_rs','S_LLE_SSIM_rs','S_LLE_VIF_rs','S_LLE_GMSD_rs');
save('Data/Result/IQA_SynSketch_MWF.mat','S_MWF_FSIM_rs','S_MWF_SSIM_rs','S_MWF_VIF_rs','S_MWF_GMSD_rs');
save('Data/Result/IQA_SynSketch_MRF.mat','S_MRF_FSIM_rs','S_MRF_SSIM_rs','S_MRF_VIF_rs','S_MRF_GMSD_rs');
save('Data/Result/IQA_SynSketch_SSD.mat','S_SSD_FSIM_rs','S_SSD_SSIM_rs','S_SSD_VIF_rs','S_SSD_GMSD_rs');


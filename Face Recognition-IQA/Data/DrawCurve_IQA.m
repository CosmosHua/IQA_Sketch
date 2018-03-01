clear;
clc;
close all;

% Methods = {'LLE','SSD','MRF','MWF','Bayesian'};

load Result_CUHK_VSNR.mat;

figure;

numindex = length(Result{1});

colorset = [255  0  255;
             0   255  0;
             0    0  255;
             138  43 226;
             0   199 140;
             255 215  0;
           ];
       
colorset = colorset./255;

plot(1:numindex,100*Result{1},'-','Color',colorset(6,:),'LineWidth',3);
hold on;
plot(1:numindex,100*Result{2},'-','Color',colorset(5,:),'LineWidth',3);
plot(1:numindex,100*Result{3},'-','Color',colorset(4,:),'LineWidth',3);
plot(1:numindex,100*Result{4},'-','Color',colorset(3,:),'LineWidth',3);
% plot(1:numindex,Result{1},'-','Color',colorset(2,:),'LineWidth',3);
plot(1:numindex,100*Result{5},'-','Color',colorset(1,:),'LineWidth',3);

xlabel('Rank');
ylabel('Recognition rate (%)');
axis([1 numindex 0 100]);
legend('LLE','SSD','MRF','MWF','Bayesian','Location','SouthEast');
title('VSNR Statistics');

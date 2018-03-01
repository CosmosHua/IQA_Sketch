function [AUC_Score_LLE AUC_Score_SSD AUC_Score_MRF AUC_Score_MWF] = DrawFigure(MWF,MRF,SSD,LLE,index,titlename)

colorset = [0  0   0;
           160 32 240;
           0  255 255;
           56 94  15;
           255 0 255;
           255 97 0;
           128 42 42;
           0 199 140;
           0 0 255;
           0 255 0;
           ];
       
colorset2 = [255  0  255;
             0   255  0;
             0    0  255;
             138  43 226;
             0   199 140;
             255 215  0;
             0 0 0;
           ];
       
colorset = colorset./255;
colorset2 = colorset2./255;

LLE_Score  = zeros(length(index),1);
MWF_Score  = zeros(length(index),1);
MRF_Score  = zeros(length(index),1);
SSD_Score  = zeros(length(index),1);

for i = 1:length(index)
    
    ind = find(LLE<=index(i));
    LLE_Score(i) = length(ind)/length(LLE)*100;
    
    ind = find(MWF<=index(i));
    MWF_Score(i) = length(ind)/length(MWF)*100;
    
    ind = find(SSD<=index(i));
    SSD_Score(i) = length(ind)/length(SSD)*100;
    
    ind = find(MRF<=index(i));
    MRF_Score(i) = length(ind)/length(MRF)*100;
    
end

AUC_Score_LLE = cumtrapz(index,LLE_Score);
AUC_Score_MWF = cumtrapz(index,MWF_Score);
AUC_Score_SSD = cumtrapz(index,SSD_Score);
AUC_Score_MRF = cumtrapz(index,MRF_Score);

figure;

plot(index,LLE_Score,'-','Color',colorset2(3,:),'LineWidth',3);
hold on;
plot(index,SSD_Score,'-','Color',colorset2(5,:),'LineWidth',3);
plot(index,MRF_Score,'-','Color',colorset2(6,:),'LineWidth',3);
plot(index,MWF_Score,'-','Color',colorset2(1,:),'LineWidth',3);
xlabel('Score');
ylabel('Proportion (%)');
title(titlename);
axis([min(index) max(index) 0 100]);
legend('LLE','SSD','MRF','MWF','Location','SouthEast');
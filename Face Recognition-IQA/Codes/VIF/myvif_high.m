clc
clear
tic
mssim1=[];
for i=1:100
img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\10 伪画像（lle）\',num2str(i),'.jpg')); 
hf= [-1,0,1];
vf= [-1,0,1]';
imgh1 = conv2(double(img1),hf,'same');
imgv1 = conv2(double(img1),vf,'same');
imgh2 = conv2(double(img2),hf,'same');
imgv2 = conv2(double(img2),vf,'same');
imghv1=(imgh1.^2+imgv1.^2).^0.5;
imghv2=(imgh2.^2+imgv2.^2).^0.5;
mssim = vifvec(imghv1,imghv2);
mssim1=[mssim1 mssim];
end
x=1:size(mssim1,2);
y1=mssim1;
%%%%%
mssim1=[];
for i=1:100
img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\7新lle\',num2str(i),'.jpg')); 
hf= [-1,0,1];
vf= [-1,0,1]';
imgh1 = conv2(double(img1),hf,'same');
imgv1 = conv2(double(img1),vf,'same');
imgh2 = conv2(double(img2),hf,'same');
imgv2 = conv2(double(img2),vf,'same');
imghv1=(imgh1.^2+imgv1.^2).^0.5;
imghv2=(imgh2.^2+imgv2.^2).^0.5;
mssim = vifvec(imghv1,imghv2);
mssim1=[mssim1 mssim];
end
x=1:size(mssim1,2);
y2=mssim1;
%%%%%
mssim1=[];
for i=1:100
img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\z_3blockcluster_pseudo_zlpj_l_h2igh\z_3blockcluster_pseudo_zlpj_l_h2igh',num2str(i),'.jpg'));
hf= [-1,0,1];
vf= [-1,0,1]';
imgh1 = conv2(double(img1),hf,'same');
imgv1 = conv2(double(img1),vf,'same');
imgh2 = conv2(double(img2),hf,'same');
imgv2 = conv2(double(img2),vf,'same');
imghv1=(imgh1.^2+imgv1.^2).^0.5;
imghv2=(imgh2.^2+imgv2.^2).^0.5;
mssim = vifvec(imghv1,imghv2);
mssim1=[mssim1 mssim];
end
x=1:size(mssim1,2);
y3=mssim1;
%%%%%%%
mssim1=[];
for i=1:100
img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\8伪画像（E-HMM）\',num2str(i),'.jpg')); 
hf= [-1,0,1];
vf= [-1,0,1]';
imgh1 = conv2(double(img1),hf,'same');
imgv1 = conv2(double(img1),vf,'same');
imgh2 = conv2(double(img2),hf,'same');
imgv2 = conv2(double(img2),vf,'same');
imghv1=(imgh1.^2+imgv1.^2).^0.5;
imghv2=(imgh2.^2+imgv2.^2).^0.5;
mssim = vifvec(imghv1,imghv2);
mssim1=[mssim1 mssim];
end
x=1:size(mssim1,2);
y4=mssim1;
%%%%%%%
mssim1=[];
for i=1:100
img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\z_3blockcluster_pseudo_zlpj_h2igh\z_3blockcluster_pseudo_zlpj_h2igh',num2str(i),'.jpg')); 
hf= [-1,0,1];
vf= [-1,0,1]';
imgh1 = conv2(double(img1),hf,'same');
imgv1 = conv2(double(img1),vf,'same');
imgh2 = conv2(double(img2),hf,'same');
imgv2 = conv2(double(img2),vf,'same');
imghv1=(imgh1.^2+imgv1.^2).^0.5;
imghv2=(imgh2.^2+imgv2.^2).^0.5;
mssim = vifvec(imghv1,imghv2);
mssim1=[mssim1 mssim];
end
x=1:size(mssim1,2);
y5=mssim1;
%%%%%
mssim1=[];
for i=1:100
img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\5z13_13_85blockcluster_pseudo\z_13_13_85blockcluster_pseudo',num2str(i),'.jpg')); 
hf= [-1,0,1];
vf= [-1,0,1]';
imgh1 = conv2(double(img1),hf,'same');
imgv1 = conv2(double(img1),vf,'same');
imgh2 = conv2(double(img2),hf,'same');
imgv2 = conv2(double(img2),vf,'same');
imghv1=(imgh1.^2+imgv1.^2).^0.5;
imghv2=(imgh2.^2+imgv2.^2).^0.5;
mssim = vifvec(imghv1,imghv2);
mssim1=[mssim1 mssim];
end
x=1:size(mssim1,2);
y6=mssim1;
%%%%%
mssim1=[];
for i=1:100
img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\combine_7_7_gai\combine_7_7_gai',num2str(i),'.jpg')); 
hf= [-1,0,1];
vf= [-1,0,1]';
imgh1 = conv2(double(img1),hf,'same');
imgv1 = conv2(double(img1),vf,'same');
imgh2 = conv2(double(img2),hf,'same');
imgv2 = conv2(double(img2),vf,'same');
imghv1=(imgh1.^2+imgv1.^2).^0.5;
imghv2=(imgh2.^2+imgv2.^2).^0.5;
mssim = vifvec(imghv1,imghv2);
mssim1=[mssim1 mssim];
end
x=1:size(mssim1,2);
y7=mssim1;
%%%%%
mssim1=[];
for i=1:100
img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\z_3blockcluster_pseudo_zlpj_s_h2igh\z_3blockcluster_pseudo_zlpj_s_h2igh',num2str(i),'.jpg')); 
hf= [-1,0,1];
vf= [-1,0,1]';
imgh1 = conv2(double(img1),hf,'same');
imgv1 = conv2(double(img1),vf,'same');
imgh2 = conv2(double(img2),hf,'same');
imgv2 = conv2(double(img2),vf,'same');
imghv1=(imgh1.^2+imgv1.^2).^0.5;
imghv2=(imgh2.^2+imgv2.^2).^0.5;
mssim = vifvec(imghv1,imghv2);
mssim1=[mssim1 mssim];
end
x=1:size(mssim1,2);
y8=mssim1;


plot(x,y1,'g')
hold on
plot(x,y3,'r')
hold on
plot(x,y4,'b')
hold on
plot(x,y5,'k')
hold on
plot(x,y7,'c')
hold on
plot(x,y8,'m')
toc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clc
% clear
% tic
% mssim1=[];
% for i=1:100
% img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
% img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\10 伪画像（lle）\',num2str(i),'.jpg')); 
% mssim = vifvec(img1,img2);
% mssim1=[mssim1 mssim];
% end
% x=1:size(mssim1,2);
% y1=mssim1;
% %%%%%
% mssim1=[];
% for i=1:100
% img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
% img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\7新lle\',num2str(i),'.jpg')); 
% mssim = vifvec(img1,img2);
% mssim1=[mssim1 mssim];
% end
% x=1:size(mssim1,2);
% y2=mssim1;
% %%%%%
% mssim1=[];
% for i=1:100
% img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
% img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\z_3blockcluster_pseudo_zlpj_l_h2igh\z_3blockcluster_pseudo_zlpj_l_h2igh',num2str(i),'.jpg'));
% mssim = vifvec(img1,img2);
% mssim1=[mssim1 mssim];
% end
% x=1:size(mssim1,2);
% y3=mssim1;
% %%%%%%%
% mssim1=[];
% for i=1:100
% img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
% img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\8伪画像（E-HMM）\',num2str(i),'.jpg')); 
% mssim = vifvec(img1,img2);
% mssim1=[mssim1 mssim];
% end
% x=1:size(mssim1,2);
% y4=mssim1;
% %%%%%%%
% mssim1=[];
% for i=1:100
% img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
% img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\z_3blockcluster_pseudo_zlpj_h2igh\z_3blockcluster_pseudo_zlpj_h2igh',num2str(i),'.jpg')); 
% mssim = vifvec(img1,img2);
% mssim1=[mssim1 mssim];
% end
% x=1:size(mssim1,2);
% y5=mssim1;
% %%%%%
% mssim1=[];
% for i=1:100
% img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
% img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\5z13_13_85blockcluster_pseudo\z_13_13_85blockcluster_pseudo',num2str(i),'.jpg')); 
% mssim = vifvec(img1,img2);
% mssim1=[mssim1 mssim];
% end
% x=1:size(mssim1,2);
% y6=mssim1;
% %%%%%
% mssim1=[];
% for i=1:100
% img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
% img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\6combine7_7mean_chazhi\combine7_7mean_chazhi',num2str(i),'.jpg')); 
% mssim = vifvec(img1,img2);
% mssim1=[mssim1 mssim];
% end
% x=1:size(mssim1,2);
% y7=mssim1;
% %%%%%
% mssim1=[];
% for i=1:100
% img1 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\tang\photo',num2str(i),'.jpg')); 
% img2 = imread(strcat('C:\Documents and Settings\Administrator\桌面\VIF\z_3blockcluster_pseudo_zlpj_s_h2igh\z_3blockcluster_pseudo_zlpj_s_h2igh',num2str(i),'.jpg')); 
% mssim = vifvec(img1,img2);
% mssim1=[mssim1 mssim];
% end
% x=1:size(mssim1,2);
% y8=mssim1;
% 
% 
% 
% plot(x,y1,'g')
% hold on
% plot(x,y3,'r')
% hold on
% plot(x,y4,'b')
% hold on
% plot(x,y5,'k')
% hold on
% plot(x,y7,'c')
% hold on
% plot(x,y8,'m')
% toc
% 
% 
% 
% 
% 
% 
% 
% 
% 
% 

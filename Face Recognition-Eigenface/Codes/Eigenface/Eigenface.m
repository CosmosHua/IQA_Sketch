function Result = Eigenface(TrainData,TestData,GalleryData,TestLabel,GalleryLabel,ndim,Method,nrank)

TrainData = double(TrainData);
TestData  = double(TestData);
GalleryData = double(GalleryData);

options.ReducedDim = ndim;

[EVec EVal] = PCA(TrainData',options);

ProjTest    = EVec'*TestData;
ProjGallery = EVec'*GalleryData;

Distance = EuDist2(ProjTest',ProjGallery');
[distance index] = sort(Distance');

counter = zeros(nrank,1);

for i = 1:size(ProjTest,2)
    
    cnt       = zeros(nrank,1);
    tempindex = find(index(:,i)==i);
    fprintf('Rank %d is correct!\n',tempindex);
    
    if tempindex <= nrank
        cnt(tempindex:end) = 1;
    end
    
    counter = counter + cnt;
    
end

Result = counter/size(ProjTest,2);

% PredictLabel = GalleryLabel(index(1,:)');
% 
% rate = sum(PredictLabel == TestLabel)/length(TestLabel);


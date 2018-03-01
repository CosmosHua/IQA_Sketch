function Eigenface_Result = Eigenface_Classification(Methods,Data,nTrain,nrank)

for i = 1:length(Methods)
    
    %Synthesized Sketch based Recognition  
    TrainData  = [Data{1}.TrSketch Data{i+1}.TrSketch];
    TestData   = Data{1}.TeSketch;
    
    GalleryData  = Data{i+1}.TeSketch;
    TrainLabel   = [1:nTrain 1:nTrain];
    TestLabel    = [nTrain+1:nTrain+size(TestData,2)];
    GalleryLabel = [nTrain+1:nTrain+size(GalleryData,2)];
    Eigenface_Result(:,i) = Eigenface(TrainData,TestData,GalleryData,...
        TestLabel,GalleryLabel,300,Methods{i},nrank);
    
end
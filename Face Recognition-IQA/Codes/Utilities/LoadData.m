function [TrSketch] = LoadData(imageindex,Path,Method)

TrSketch = [];
TeSketch = [];

for i = 1:length(imageindex)
    
    sketch      = imread([Path,Method,'/Sketch/',num2str(imageindex(i)),'.jpg']);
    if size(sketch,3) == 3
        sketch = rgb2gray(sketch);
    end
    TrSketch = [TrSketch sketch(:)];
    
end
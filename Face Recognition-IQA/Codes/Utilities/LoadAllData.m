function Data = LoadAllData(imageindex,Path,Methods)

Methods2(2:6) = Methods;
Methods2{1}   = 'GR';

for i = 1:length(Methods2)
    
    [TrSketch] = LoadData(imageindex,Path,Methods2{i});
    Data{i} = TrSketch;
    
end



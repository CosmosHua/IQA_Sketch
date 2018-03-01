function cnt = KNN_Classification(refim,Gallery,i,nrank)

score = [];
cnt   = zeros(nrank,1);

Distance = EuDist2(double(refim'),double(Gallery'));

[val ind] = sort(Distance);

tempindex = find(ind==i);

fprintf('Rank %d is correct!\n',tempindex);

if tempindex <= nrank
    cnt(tempindex:end) = 1;
end



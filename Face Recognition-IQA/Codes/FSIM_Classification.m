function cnt = FSIM_Classification(refim,Gallery,i,nrank)

score = [];
cnt   = zeros(nrank,1);

for ii = 1:size(Gallery,2)
    
    im = Gallery(:,ii);
    im = reshape(im,250,200);
    score(ii) = FeatureSIM(refim,im);
    
end

[val ind] = sort(score,'descend');

tempindex = find(ind==i);

fprintf('Rank %d is correct!\n',tempindex);

if tempindex <= nrank
    cnt(tempindex:end) = 1;
end



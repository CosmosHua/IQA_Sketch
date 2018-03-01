function cnt = GMSD_Classification(refim,Gallery,i,nrank)

score = [];
cnt   = zeros(nrank,1);

for ii = 1:size(Gallery,2)
    
    im = Gallery(:,ii);
    im = reshape(im,250,200);
    score(ii) = FR_GMSD(refim,im);
    
end

[val ind] = sort(score);

tempindex = find(ind==i);

fprintf('Rank %d is correct!\n',tempindex);

if tempindex <= nrank
    cnt(tempindex:end) = 1;
end



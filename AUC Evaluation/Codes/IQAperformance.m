function Performance = IQAperformance(SubQ, ObjQ)
% Lei Zhang
            
ObjQ = ObjQ(:);
SubQ = SubQ(:);

if sum(isnan(ObjQ))~=0 || sum(isinf(ObjQ))~=0
    warning('there are nan or inf values in the predicted quality scores')
    SubQ(isnan(ObjQ)) = [];
    ObjQ(isnan(ObjQ)) = [];
    SubQ(isinf(ObjQ)) = [];
    ObjQ(isinf(ObjQ)) = [];
end

SubQp = nonlinear_fit(ObjQ, SubQ);


%% KRCC SRCC PLCC

KRCC = corr(SubQp,SubQ,'type','Kendall');
SRCC = corr(SubQp,SubQ,'type','Spearman');
PLCC = corr(SubQp,SubQ,'type','Pearson');
% MAE = sum(abs(SubQp-SubQ))/length(SubQ);
% RMSE = sqrt(mean((SubQp-SubQ).^2));


%% PrAcc


N  = length(SubQ);
pN = N*(N-1)/2;
y  = zeros(pN,1);
ypredict = zeros(pN,1);
count = 0;
for i = 1:N
	for j = (i+1):N
        count           = count+1;
        y(count)        = sign(SubQ(i)-SubQ(j));
        if SRCC > 0
            ypredict(count) = sign(SubQp(i)-SubQp(j));
        else
            ypredict(count) = -sign(SubQp(i)-SubQp(j));
        end
	end
end

PrAC = mean(y == ypredict);

Performance = [PrAC, KRCC, SRCC, PLCC];
Performance(isnan(Performance)) = 0;

end

%%
function [x_fit] = nonlinear_fit(x,y)
    if corr(x,y,'type','Pearson')>0
        beta0(1) = max(y) - min(y);
    else
        beta0(1) = min(y) - max(y);
    end
    beta0(2) = 1/std(x);
    beta0(3) = mean(x);
    beta0(4) = -1;
    beta0(5) = mean(y);

    beta = nlinfit(x,y,@logistic5,beta0);
    x_fit = feval(@logistic5, beta, x);
end

%%
function f = logistic5(beta, x)
    f = beta(1).*(0.5-(1./(1+exp(beta(2).*(x-beta(3)))))) + beta(4).*x + beta(5);   
end
clc,clear
Train = load('TrainingSamplesDCT_8.mat');
FG = Train.TrainsampleDCT_FG;
BG = Train.TrainsampleDCT_BG;
FG_index = zeros(250,1);
BG_index = zeros(1053,1);
num = 0;
PC=250/(250+1053);
PG=1053/(250+1053);
for i = 1:1053
    BG_index(i) = max(BG(i,2:64));
end

for i = 1:250
    FG_index(i) = max(FG(i,2:64));
end
[mu1,sigma1] = normfit(BG_index);
d1=pdf('norm',BG_index,mu1,sigma1);
[mu2,sigma2] = normfit(FG_index);
d2=pdf('norm',FG_index,mu2,sigma2);

index_x = 0:0.004:1;
result1 = zeros(length(index_x)-1,1);
result2 = zeros(length(index_x)-1,1);
for i = 1:length(index_x)-1
    for j = 1:1053
        if BG_index(j)>=index_x(i) && BG_index(j)<index_x(i+1)
            result1(i) = result1(i)+1;
        end
    end
    for k = 1:250
        if FG_index(k)>=index_x(i) && FG_index(k)<index_x(i+1)
            result2(i) = result2(i)+1;
        end
    end
end
index_x = index_x + 0.002;
bar(index_x(1:250), result1/1053)
hold on
bar(index_x(1:250), result2/250)

[mu1,sigma1] = normfit(BGresult);
d1=pdf('norm',BGresult,mu1,sigma1);
[mu2,sigma2] = normfit(FGresult);
d2=pdf('norm',FGresult,mu2,sigma2);
plot(BGresult,d1,'.')
hold on
plot(FGresult,d2,'.')
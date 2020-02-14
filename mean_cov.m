function [ave,cov] = mean_cov(input,index)
%COVARIANCE
len = length(input);
len_index = length(index);
ave = sum(input(:,index))/len;
cov = zeros(len_index,len_index);
for i = 1:len
    cov = cov+(input(i,index)-ave)'*(input(i,index)-ave);
end
cov = cov/len;
end


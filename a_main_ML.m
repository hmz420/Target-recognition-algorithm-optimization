%% Algorithm: Maximum-likelihood Estimation (ML)
% PoE_all_feature: 15.28%; PoE_best_feature:4.55%
% Author: Huiming Zhou
clc,clear
%% Calculate feature X (index of the DCT coefficient with 2nd greatest energy)
format long
image = im2double(imread('cheetah.bmp'));
L1 = length(1:255-7);
L2 = length(1:270-7);
image_vector = ones(L1*L2,64);
index = 1;
for i = 4:L1+3
    for j = 4:L2+3
        A = image((i-3):(i+4),(j-3):(j+4));                                % Get block
        B = dct2(A);                                                       % DCT
        image_vector(index,:) = ZigZag(B);                                 % ZigZag
        index = index + 1;
    end
end
%% Caculate probability of features according to training sample
Train = load('TrainingSamplesDCT_subsets_8.mat');
FG = Train.D1_FG;
BG = Train.D1_BG;
P_FG = 0.2;                                                     % Define PX|Y(x|cheetah)
P_BG = 0.8;                                                    % Define PX|Y(x|grass)
Index_Gauss_FG = ones(64,2);
Index_Gauss_BG = ones(64,2);
for i = 1:64
    Index_Gauss_FG(i,1) = sum(FG(:,i))/length(FG);
    Index_Gauss_FG(i,2) = (sum((FG(:,i)-Index_Gauss_FG(i,1)).^2)/length(FG)).^(1/2);
    Index_Gauss_BG(i,1) = sum(BG(:,i))/length(BG);
    Index_Gauss_BG(i,2) = (sum((BG(:,i)-Index_Gauss_BG(i,1)).^2)/length(BG)).^(1/2);
end
index_best = [1 18 19 21 25 26 33 40];
[aa,covF] = mean_cov(FG,1:64);
[bb,covB] = mean_cov(BG,1:64);
[cc,covF_best] = mean_cov(FG,index_best);
[dd,covB_best] = mean_cov(BG,index_best);
%% Classify pixels
count=1;
image_result = zeros(L1+7,L2+7);
image_result_best = zeros(L1+7,L2+7);
detcoF=det(covF);
detcoB=det(covB);
invF=pinv(covF);
invB=pinv(covB);
detcoF_best = det(covF_best);
detcoB_best = det(covB_best);
invF_best = pinv(covF_best);
invB_best = pinv(covB_best);
for i = 4:L1+3
    for j = 4:L2+3
        PCF = 1/(((2*pi)^64*detcoF)^(1/2))*exp(-1/2*(image_vector(count,:)'-Index_Gauss_FG(:,1))'*invF*(image_vector(count,:)'-Index_Gauss_FG(:,1)));
        PCB = 1/(((2*pi)^64*detcoB)^(1/2))*exp(-1/2*(image_vector(count,:)'-Index_Gauss_BG(:,1))'*invB*(image_vector(count,:)'-Index_Gauss_BG(:,1)));
        if ((P_FG * PCF) > (P_BG * PCB))                                   
            image_result(i,j)=255;                                         
        end
        PCF_best = 1/(((2*pi)^64*detcoF_best)^(1/2))*exp(-1/2*(image_vector(count,index_best)'-Index_Gauss_FG(index_best,1))'*invF_best*(image_vector(count,index_best)'-Index_Gauss_FG(index_best,1)));
        PCB_best = 1/(((2*pi)^64*detcoB_best)^(1/2))*exp(-1/2*(image_vector(count,index_best)'-Index_Gauss_BG(index_best,1))'*invB_best*(image_vector(count,index_best)'-Index_Gauss_BG(index_best,1)));
        if ((P_FG * PCF_best) > (P_BG * PCB_best))                         
            image_result_best(i,j)=255;                                    
        end
        count = count+1;
    end
end
figure(7)
imshow(image_result,[])                                                    % Display image
figure(8)
imshow(image_result_best,[])
%% Compute the probability of error of your algorithm
image_real = imread('cheetah_mask.bmp');
P_error_ML = sum(sum(image_real(4:251,4:266) ~= image_result(4:251,4:266)))/((255-7)*(270-7))
P_error_ML_best = sum(sum(image_real(4:251,4:266) ~= image_result_best(4:251,4:266)))/((255-7)*(270-7))

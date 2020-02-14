%% Algorithm: Compare BPE, MAP and ML
% Author: Huiming Zhou
%% Process photo
clc,clear
image = im2double(imread('cheetah.bmp'));
[L1,L2] = size(image);
L1=L1-7; L2=L2-7;
image_vector = ones(L1*L2,64);
index = 1;
for i = 4:L1+3
    for j = 4:L2+3
        A = image((i-3):(i+4),(j-3):(j+4)); % Get block
        B = dct2(A); % DCT
        image_vector(index,:) = ZigZag(B); % ZigZag
        index = index + 1;
    end
end
%% Process sample
Train = load('TrainingSamplesDCT_subsets_8.mat');
Prior = load('Prior_2.mat');
data_set = load('Alpha.mat');
P_FG = 0.2;
P_BG = 0.8;
index_select = 1:64;
mu0_FG = Prior.mu0_FG(index_select);
mu0_BG = Prior.mu0_BG(index_select);
alpha_data = data_set.alpha;
result = zeros(2,length(alpha_data));
result_D = zeros(12,length(alpha_data));
result_ML=[0.152765853060223 0.077456151110021 0.090840794799460 0.085229363424506];
Data_FG = {Train.D1_FG,Train.D2_FG,Train.D3_FG,Train.D4_FG};
Data_BG = {Train.D1_BG,Train.D2_BG,Train.D3_BG,Train.D4_BG};
%% Figure D1 - D4
for m = 1:4
    FG = cell2mat(Data_FG(m));
    BG = cell2mat(Data_BG(m));
    [mu_FG,cov_FG] = mean_cov(FG,index_select);
    [mu_BG,cov_BG] = mean_cov(BG,index_select);
    %% Diffirent alpha
    for k = 1:length(alpha_data)
        alpha = alpha_data(k);
        cov_mu0 = alpha * diag(Prior.W0(index_select));
        AF = pinv(cov_mu0 + cov_FG/length(FG));
        AB = pinv(cov_mu0 + cov_BG/length(BG));
        mun_FG = cov_mu0 * AF * mu_FG'+1/length(FG) * cov_FG * AF * mu0_FG';
        mun_BG = cov_mu0 * AB * mu_BG'+1/length(BG) * cov_BG * AB * mu0_BG';
        covFG_BPE = cov_FG + cov_mu0 * AF * cov_FG/length(FG);
        covBG_BPE = cov_BG + cov_mu0 * AB * cov_BG/length(BG);
        det_coF_BPE = det(covFG_BPE);
        det_coB_BPE = det(covBG_BPE);
        inv_coF_BPE = pinv(covFG_BPE);
        inv_coB_BPE = pinv(covBG_BPE);
        covFG_MAP = cov_FG;
        covBG_MAP = cov_BG;
        det_coF_MAP = det(covFG_MAP);
        det_coB_MAP = det(covBG_MAP);
        inv_coF_MAP = pinv(covFG_MAP);
        inv_coB_MAP = pinv(covBG_MAP);
        %% Compare
        image_result_BPE = zeros(L1+7,L2+7);
        image_result_MAP = zeros(L1+7,L2+7);
        count = 1;
        for i = 4:L1+3
            for j = 4:L2+3
                PCF_BPE = 1/(det_coF_BPE^(1/2))*exp(-1/2*(image_vector(count,index_select)-mun_FG')*inv_coF_BPE*(image_vector(count,index_select)'-mun_FG));
                PCB_BPE = 1/(det_coB_BPE^(1/2))*exp(-1/2*(image_vector(count,index_select)-mun_BG')*inv_coB_BPE*(image_vector(count,index_select)'-mun_BG));
                PCF_MAP = 1/(det_coF_MAP^(1/2))*exp(-1/2*(image_vector(count,index_select)-mun_FG')*inv_coF_MAP*(image_vector(count,index_select)'-mun_FG));
                PCB_MAP = 1/(det_coB_MAP^(1/2))*exp(-1/2*(image_vector(count,index_select)-mun_BG')*inv_coB_MAP*(image_vector(count,index_select)'-mun_BG));
                if (P_FG * PCF_BPE > P_BG * PCB_BPE)
                    image_result_BPE(i,j) = 255;
                end
                if (P_FG * PCF_MAP > P_BG * PCB_MAP)
                    image_result_MAP(i,j) = 255;
                end
                count = count+1;
            end
        end
        %% Error
        image_real = imread('cheetah_mask.bmp');
        P_error_BPE = sum(sum(image_real(4:251,4:266) ~= image_result_BPE(4:251,4:266)))/((255-7)*(270-7));
        P_error_MAP = sum(sum(image_real(4:251,4:266) ~= image_result_MAP(4:251,4:266)))/((255-7)*(270-7));
        result(1,k) = P_error_BPE;
        result(2,k) = P_error_MAP;
    end
    %% Save data
    result_D(3*m-2,:) = result(1,:);
    result_D(3*m-1,:) = result(2,:);
    result_D(3*m,:) = ones(1,9)*result_ML(m);
end
plot_D(alpha_data,result_D)
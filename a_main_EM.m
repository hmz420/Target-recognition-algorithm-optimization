%% Algorithm: Expectation Maximization (EM) 
% Huiming Zhou
%% Process photo
clear,clc
format short
image = im2double(imread('cheetah.bmp'));
image_real = imread('cheetah_mask.bmp');
[L1,L2] = size(image);
L1=L1-7; L2=L2-7;
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
%% Process data
Data = load('TrainingSamplesDCT_8_new.mat');
L_dimens = [1 2 4 8 16 24 32 40 48 56 64];
C_compon = [1 2 4 8 16 32];
comp = 8;
% Initialize pi mu sigma
pi_BG_save = rand(1,comp);
pi_BG_save = pi_BG_save/sum(pi_BG_save);
pi_FG_save = rand(1,comp);
pi_FG_save = pi_FG_save/sum(pi_FG_save);
mu_BG_save = rand(64,comp);
mu_FG_save = rand(64,comp);
sigma_BG_save = rand(64,comp);
sigma_FG_save = rand(64,comp);
% Save error data
P_error_EM = zeros(1,11);

for index = [11 10 9 8 7 6 5 4 3 2 1]
    % Initialize parameters
    dim = L_dimens(index);
    Data_BG = Data.TrainsampleDCT_BG(:,1:dim)';
    Data_FG = Data.TrainsampleDCT_FG(:,1:dim)';
    mu_BG = mu_BG_save(1:dim,:);
    mu_FG = mu_FG_save(1:dim,:);
    sigma_BG = sigma_BG_save(1:dim,:);
    sigma_FG = sigma_FG_save(1:dim,:);
    pi_BG = pi_BG_save;
    pi_FG = pi_FG_save;
    h_BG = zeros(length(Data_BG),comp);
    h_FG = zeros(length(Data_FG),comp);
    
    for n = 1:500
        h_BG = update_h(Data_BG,mu_BG,sigma_BG,pi_BG,comp);
        h_FG = update_h(Data_FG,mu_FG,sigma_FG,pi_FG,comp);
        [sigma_BG,pi_BG,mu_BG] = Update_sigma_pi_mu(Data_BG,mu_BG,h_BG,comp);
        [sigma_FG,pi_FG,mu_FG] = Update_sigma_pi_mu(Data_FG,mu_FG,h_FG,comp);
    end
    
    mu_BG_save(1:dim,:) = mu_BG;
    mu_FG_save(1:dim,:) = mu_FG;
    sigma_BG_save(1:dim,:) = sigma_BG;
    sigma_FG_save(1:dim,:) = sigma_FG;
    pi_BG_save = pi_BG;
    pi_FG_save = pi_FG;
    %% BDR
    image_result_EM = zeros(L1+7,L2+7);
    count = 1;
    P_FG = 250/(250+1053);
    P_BG = 1053/(250+1053);
    for i = 4:L1+3
        for j = 4:L2+3
            PCF_EM = 0; PCB_EM = 0;
            for k = 1:comp
                PCB_EM = PCB_EM + pi_BG(k)* mvnpdf(image_vector(count,1:dim)',mu_BG(:,k),diag(sigma_BG(:,k)));
                PCF_EM = PCF_EM + pi_FG(k)* mvnpdf(image_vector(count,1:dim)',mu_FG(:,k),diag(sigma_FG(:,k)));
            end
            if P_FG * PCF_EM >= P_BG * PCB_EM
                image_result_EM(i,j) = 255;
            end
            count = count+1;
        end
    end
    imshow(image_result_EM,[])
    P_error_EM(index) = sum(sum(image_real(4:251,4:266) ~= image_result_EM(4:251,4:266)))/((255-7)*(270-7));
end
    
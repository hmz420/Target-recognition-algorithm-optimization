function [sigma_new,pi_new,mu_new] = Update_sigma_pi_mu(D_BF,mu,h,comp)
%UPDATE_SIGMA_H_MU
    L_sample = length(D_BF);
    L_dim = length(mu(:,1));
    pi_new = zeros(1,comp);
    sigma_new = zeros(L_dim,comp);
    mu_new = zeros(L_dim,comp);
    %% update pi
    for j = 1:comp
        pi_new(j) = sum(h(:,j))/L_sample;
    end
    %% update sigma
    for j = 1:comp
        sigma_zero = 0;
        for i = 1:L_sample
            sigma_zero = sigma_zero + h(i,j)*(D_BF(:,i)-mu(:,j)).^2;
        end
        sigma_zero = sigma_zero/sum(h(:,j));
        sigma_zero(sigma_zero == 0) = 1e-6;
        sigma_zero(sigma_zero >= 1e6) = 1e6;
        sigma_new(:,j) = sigma_zero;
    end
    %% update mu
    for j = 1:comp
        den = sum(h(:,j));
        mu_middle = 0;
        for i = 1:L_sample
            mu_middle = mu_middle + h(i,j)*D_BF(:,i);
        end
        mu_new(:,j) = mu_middle/den;
    end
end
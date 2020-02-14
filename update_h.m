function h = update_h(D_BF,mu,sigma,pi_BF,comp)
%UPDATA_H
    h = zeros(length(D_BF),comp);
    for i = 1:length(D_BF)
        den = 0;
        for j = 1:comp
            den = den + mvnpdf(D_BF(:,i),mu(:,j),diag(sigma(:,j)))*pi_BF(j);
        end
        for j = 1:comp
            h(i,j) = mvnpdf(D_BF(:,i),mu(:,j),diag(sigma(:,j))*pi_BF(j))/den;
        end
    end
    h(h == 0) = 1e-6;
end
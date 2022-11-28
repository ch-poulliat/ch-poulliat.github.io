function [QCCode ] = QCGenerator(HB,L )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

[m,n]=size(HB);
H=[];
for ii=1:m
    Htmp=[];
    for jj=1:n
        
        coeff=randi([0 L-1], 1, HB(ii,jj));
        test=unique(coeff);
        while length(test)<length(coeff)
            coeff=randi([0 L-1], 1, HB(ii,jj));
            test=unique(coeff);
        end
        
        Atmp=zeros(L);
        for d=1:HB(ii,jj)
            Atmp=Atmp+circshift(eye(L),coeff(d));
        end
        Htmp=[Htmp,rem(Atmp,2)];
    end
    H=[H;Htmp];
end

QCCode=H;
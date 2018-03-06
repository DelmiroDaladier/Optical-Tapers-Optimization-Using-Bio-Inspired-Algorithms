function [ out ] = crossover( winners )
%CROSSOVER Summary of this function goes here
%   Detailed explanation goes here

parents = winners;
l = size(parents);
kids = [];

disp('Crososver On');

for i=1:2:l(1)-1
    aux1 = winners(i,1:8);
    aux2 = winners(i+1,1:8);
    ind1 = [];
    ind2 = [];
    
    for j=1:8
        ind1 = [ind1,fix(rem(aux1(j)*pow2(-(4-1):4),2))]; 
        ind2 = [ind2,fix(rem(aux2(j)*pow2(-(4-1):4),2))];
    end
    
    pos = randperm(63,2);
    up = max(pos); 
    down = min(pos);
    
    kid1 = [ind1(1:down) ind2(down+1:up) ind1(up+1:64)];
    kid1=mutation(kid1);
    kid2 = [ind2(1:down) ind1(down+1:up) ind2(up+1:64)]; 
    kid2=mutation(kid1);
    
    kids = [kids;kid1];
    kids = [kids;kid2];
end

k = size(kids);
out = [];
b2d = 0;
line = [];
for i=1:(k(1))
    line = [];
    for j=1:8:k(2)
        number = kids(i,j:j+7);
        disp(j);
        b2d = number*pow2(4-1:-1:-4)';
        
        line = [line b2d];
        disp(line);
    end    
    out = [out; line];

end  


end


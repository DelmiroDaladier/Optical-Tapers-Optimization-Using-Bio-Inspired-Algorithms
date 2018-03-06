function [ out ] = tournament( pop,s)
%TOURNAMENT Summary of this function goes here
%   Detailed explanation goes here

pos = randperm(s,4);
candidates=[];
winners = [];
l = size(pos);
disp('Tournament');

for i=1:l(2)
    candidates=[candidates;pop(pos(i),1:8)];
end

l = size(candidates);

for i=1:2:(l(1)-1)
    
    aux1= candidates(i,1:8);
    
    aux2= candidates(i+1,1:8);
    
    if(funcao(aux1) < funcao(aux2) )
        winners = [winners;candidates(i,1:8)];
    else
        winners = [winners;candidates(i+1,1:8)];
    end
end

out = winners;

end



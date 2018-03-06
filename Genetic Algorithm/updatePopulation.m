function [ out ] = updatePopulation( pop, kids )
%UPDATEPOPULATION Summary of this function goes here
%   Detailed explanation goes here

disp('Updating');

fit = [];
smallest=[];
for i=1:size(pop)
    aux = pop(i,1:8);
    fit = [fit; funcao(aux)];
end

smallest = getNElements(fit,size(kids));

for j=1:size(smallest)

    pop(smallest(j),1:8) = kids(j,1:8);
end

out = pop;
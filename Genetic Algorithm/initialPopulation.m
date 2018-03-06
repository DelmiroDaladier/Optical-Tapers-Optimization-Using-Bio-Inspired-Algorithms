function [ population ] = initialPopulation( s )
%INITIALPOPUPLATION Summary of this function goes here
%   Generates the initial popuplation of the algorithm

population = [];
min = 1;
max = 8;

for i=1:s
    aux = min + rand(1,8)*(max-min);
    population = [population;aux];


end


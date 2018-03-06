function [ out] = speedGenerator( s )
%SPEEDGENERATOR Summary of this function goes here
%   Detailed explanation goes here

out = [];
min = 1;
max = 2;

for i=1:s
    aux = min + rand(1,8)*(max-min);
    out = [out;aux];


end


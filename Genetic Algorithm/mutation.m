function [ out ] = mutation( kid )
%MUTATION Summary of this function goes here
%   Detailed explanation goes here

k = size(kid);

for i=1:k(2)
    
    num = rand(1);
    if( num < 0.001)
        disp('MUTACAO');
        kid(i) = not(kid(i));
    end
    
end    

out = kid;

end


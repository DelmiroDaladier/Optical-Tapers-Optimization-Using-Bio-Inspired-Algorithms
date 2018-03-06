function [smallestNIdx] = getNElements(A, n)
     [ASorted, AIdx] = sort(A,'descend');
     smallestNElements = ASorted(1:n);
     smallestNIdx = AIdx(1:n);
end
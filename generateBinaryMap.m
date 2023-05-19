function [levelsBinaryMap, binaryLevelsMap] = generateBinaryMap(levels)
%Summary of this function goes here
%   levels -> the levels that we want to create binary encoding for

L = length(levels);
R = ceil(log2(L));

%binaryRep = zeros(L, R);
levelsBinaryMap = containers.Map('KeyType', 'double', 'ValueType', 'char');
binaryLevelsMap = containers.Map('KeyType', 'char', 'ValueType', 'double');


for i = 1:L
    bits = strrep(num2str(de2bi(i-1, R)),' ', '');
    levelsBinaryMap(levels(i)) = bits;
    binaryLevelsMap(bits) = levels(i);
end



end
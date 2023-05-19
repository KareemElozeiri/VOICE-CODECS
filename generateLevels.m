function [levels] = generateLevels(type,L,mp)
%Summary of this function goes here
%   type -> represents the quantization type (Mid-rise/Mid-tread)
%   L -> quantization levels number
%   mp -> peak of quantizationo;
levels = zeros(1, L);
delta = 2*mp/L;

%generating levels
if type == "Mid-rise"
    for i = 1:L
        levels(i) = (i - 0.5) * delta - mp;
    end
else
    for i = 1:L
        levels(i) = (i - 1) * delta - mp;
    end
end 



end
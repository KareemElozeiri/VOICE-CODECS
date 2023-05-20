function [AMI_time, AMI_bit] = generateAMI(bit, Tb, amplitude, polarity, offset)
%Summary of this function goes here
%   bit -> type of bit '0'/'1'
%   Tb  -> the time of the bit
%   amplitude -> the amplitude value of the signal
%   polarity  -> 1 indicate that the non-zero part of the one bit is up, -1
%   is down
%   offset -> the shift in time intances

AMI_time = [offset, offset+Tb];
AMI_bit = zeros(1,2);


if bit == '0'
    AMI_bit(1) = 0;
    AMI_bit(2) = 0;
else
    AMI_bit(1) = polarity * amplitude;
    AMI_bit(2) = 0;
end



end
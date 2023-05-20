function [manchester_time, manchester_bit] = generateManchester(bit, Tb, amplitude, offset)
%Summary of this function goes here
%   bit -> type of bit '0'/'1'
%   Tb  -> the time of the bit
%   amplitude -> the amplitude value of the signal
%   offset -> the shift in time intances

manchester_time = zeros(1,2);
manchester_bit = zeros(1,2);

manchester_time(1) = offset;
manchester_time(2) = Tb/2 + offset;

if bit == '0'
    manchester_bit(1) = -amplitude;
    manchester_bit(2) = amplitude;
else
    manchester_bit(1) = amplitude;
    manchester_bit(2) = -amplitude;
end

end
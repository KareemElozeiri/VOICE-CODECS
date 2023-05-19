function [encoddedMsg] = Encoder(quantized_signal_time_vector, quantized_signal_value_vector, type, binary_map)
%Summary of this function goes here
%   quantized_signal_time_vector -> time vector for sampling instances  
%   quantized_signal_value_vector ->  The samples values after quantization
%   type -> the encoding type (Manchester Signaling/Alternate Mark Inversion Signaling)
%   binary_map -> storing the binary-value map for binary encoding

binaryEncoding = zeros(1, length(quantized_signal_time_vector));

%converting the signal to its binary representation
for i=1:length(quantized_signal_value_vector)
    binaryEncoding(i) = binary_map(quantized_signal_time_vector(i))
end

if type == "Manchester Signaling"
    disp(0);
else
    %perform lternate Mark Inversion Signaling
    disp(1);
end


end
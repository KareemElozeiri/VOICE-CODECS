function [encoddedMsg] = Encoder(quantized_signal_time_vector, quantized_signal_value_vector, type, binary_map)
%Summary of this function goes here
%   quantized_signal_time_vector -> time vector for sampling instances  
%   quantized_signal_value_vector ->  The samples values after quantization
%   type -> the encoding type (Manchester Signaling/Alternate Mark Inversion Signaling)
%   binary_map -> storing the binary-value map for binary encoding

encoddedMsg = zeros(1, length(quantized_signal_time_vector));

end
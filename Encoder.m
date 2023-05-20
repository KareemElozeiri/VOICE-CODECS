function [encoded_msg_time, encoded_msg] = Encoder(quantized_signal_time_vector, quantized_signal_value_vector, type, binary_map, L)
%Summary of this function goes here
%   quantized_signal_time_vector -> time vector for sampling instances  
%   quantized_signal_value_vector ->  The samples values after quantization
%   type -> the encoding type (Manchester Signaling/Alternate Mark Inversion Signaling)
%   binary_map -> storing the binary-value map for binary encoding
%   L -> number of levels

binaryEncoding = zeros(1, length(quantized_signal_time_vector));

%converting the signal to its binary representation
for i=1:length(quantized_signal_value_vector)
    binaryEncoding(i) = binary_map(quantized_signal_time_vector(i))
end

R = ceil(log2(L));
Tb = (quantized_signal_time_vector(2) - quantized_signal_time_vector(1))/R;
offset = 0;
amplitude = 5;
polarity = 1; %for AMI

encoded_msg_time = zeros(1,R*2*length(quantized_signal_time_vector));
encoded_msg = zeros(1,R*2*length(quantized_signal_time_vector));


for i=0:length(binaryEncoding)
    if type == "Manchester Signaling"
        for j=1:R
            [tt, xx] = generateManchester(binaryEncoding(i)(j), Tb, amplitude, offset);
            encoded_msg_time = [encoded_msg_time tt];
            encoded_msg = [encoded_msg xx];
        end 
    else
        %perform lternate Mark Inversion Signaling
        for j=1:R
            [tt, xx] = generateAMI(binaryEncoding(i)(j), Tb, amplitude, polarity, offset);
            encoded_msg_time = [encoded_msg_time tt];
            encoded_msg = [encoded_msg xx];
        end 
        polarity = -polarity;
    end

    offset = offset + Tb;
end

end
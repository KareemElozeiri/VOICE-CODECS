function [encoded_msg_time, encoded_msg] = Encoder(quantized_signal_time_vector, quantized_signal_value_vector, type, binary_map, L)
%Summary of this function goes here
%   quantized_signal_time_vector -> time vector for sampling instances  
%   quantized_signal_value_vector ->  The samples values after quantization
%   type -> the encoding type (Manchester Signaling/Alternate Mark Inversion Signaling)
%   binary_map -> storing the binary-value map for binary encoding
%   L -> number of levels

binaryEncoding = strings(1, length(quantized_signal_time_vector));

%converting the signal to its binary representation
for i=1:length(quantized_signal_value_vector)
    binaryEncoding(i) = binary_map(num2str(quantized_signal_value_vector(i)));
end

R = int64(ceil(log2(L)));
Tb = quantized_signal_time_vector(2)/double(R);
offset = 0;
amplitude = 5;
polarity = 1; %for AMI

encoded_msg_time = []; %zeros(1, 2*R*length(quantized_signal_time_vector));
encoded_msg = []; %zeros(1, 2*R*length(quantized_signal_time_vector));

for i=1:length(binaryEncoding)
    if type == "Manchester Signaling"
        for j=1:R
            bit = char(binaryEncoding(i));
            [tt, xx] = generateManchester(bit(j), Tb, amplitude, offset);
            encoded_msg_time = [encoded_msg_time tt];
            encoded_msg = [encoded_msg xx];
            offset = offset + Tb;

        end 
    else
        %perform Alternate Mark Inversion Signaling
        for j=1:R
            bit = char(binaryEncoding(i));

            [tt, xx] = generateAMI(bit(j), Tb, amplitude, polarity, offset);
            encoded_msg_time = [encoded_msg_time tt];
            encoded_msg = [encoded_msg xx];
            offset = offset + Tb;
            if bit=='1'
                    polarity = -polarity;

        end 
    end

end

end
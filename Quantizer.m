function [quantized_signal_time_vector, quantized_signal_value_vector, mean_squared_error] = Quantizer(type, signal_time_vector, signal_value_vector, L, mp)
%Summary of this function goes here
%   type -> represents the quantization type (Mid-rise/Mid-tread)
%   signal_time_vector -> sampling instances of the input signal
%   signal_value_vector -> samples amplitudes
%   L -> quantization levels number
%   mp -> peak of quantization

quantized_signal_time_vector = signal_time_vector;
quantized_signal_value_vector = signal_value_vector;
levels = zeros(1, L);
delta = 2*mp/L;

%generating levels
if type=="Mid-rise"
    for i = 1:L
        levels(i) = (i - 0.5) * delta - mp;
    end
else
    for i = 1:L
        levels(i) = (i - 1) * delta - mp;
    end
end 

%applying quantization
for i = 1:length(signal_value_vector)
    %find the closest quantization level
    [~, index] = min(abs(signal_value_vector(i) - levels));
    %quantize the sample to the closest level
    quantized_signal_value_vector(i) = levels(index);
end

squared_error = (quantized_signal_value_vector - signal_value_vector).^2;
mean_squared_error = mean(squared_error);
disp(mean_squared_error);

%plotting the original & quantized signals
grid on
plot(signal_time_vector, signal_value_vector);
hold on
stairs(quantized_signal_time_vector, quantized_signal_value_vector);
legend("Original Signal", "Quantized Signal");
xlabel("Time");
ylabel("Amplitude");

end
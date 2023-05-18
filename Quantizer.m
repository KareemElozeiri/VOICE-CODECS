function [quantized_signal_time_vector, quantized_signal_value_vector] = Quantizer(type, signal_time_vector, signal_value_vector, L, mp)
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

for i = 1:length(signal_value_vector)
    %yet to apply quantization
end

disp(levels)
%plotting the original & quantized signals
grid on
plot(signal_time_vector, signal_value_vector);
hold on
stairs(quantized_signal_time_vector,levels);
legend("Original Signal", "Quantized Signal");
xlabel("Time");
ylabel("Amplitude");

end
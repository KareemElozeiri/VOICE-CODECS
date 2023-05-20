function [Amp,Time] = decoder(type, encoded_msg_time, encoded_msg,map,L)
% the function needs the encoded msg with its time 
% The length
lamda = 0;
R = ceil(log2(L));
Amp = zeros(1, length(encoded_msg)/(2*R));
Time = zeros(1, length(encoded_msg)/(2*R));
disp(encoded_msg(1:10))
Str = blanks(R);
for i=1:length(Amp)
    b=2*R*(i-1)+1;
    kk = 1;
    if type == "Manchester Signaling"
        
        for j=b:2:(b+2*R-1)
            if (encoded_msg(j) > lamda)  && (encoded_msg(j+1) < lamda)
                Str(kk) = '1';
            else
                Str(kk) = '0';
            end
            disp(encoded_msg(j))
            disp(encoded_msg(j+1))
            disp(Str)
            kk = kk +1;
        end 
        
        
    else
        %perform lternate Mark Inversion Signaling
        for d=b:2:(b+2*R-1)
            if encoded_msg(ceil(d/2)) == 0
                Str(kk) = '0';
            else
                Str(kk) = '1';
            end
            kk = kk +1;
        end 
        
    end
    Str = strrep(Str, ' ', '');
    disp(length(Str));

    Amp(i)= map(Str);
    T_index = (2*i*R)-1;
    Time(i)= encoded_msg_time(T_index);
    Str = blanks(R);
    
end
plot(Time,Amp);
end


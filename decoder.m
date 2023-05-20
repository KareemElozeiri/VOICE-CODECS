function [Amp,Time] = decoder(type, encoded_msg_time, encoded_msg,map,L)
% the function needs the encoded msg with its time 
% The length
lamda = 0;
R = ceil(log2(L));
Amp = zeros(1, length(encoded_msg)/(2*R));
Time = zeros(1, length(encoded_msg)/(2*R));
Str = blanks(R);
if type == "Manchester Signaling"
    for i=1:length(Amp)
        b=2*R*(i-1)+1;
        kk = 1;

        for j=b:2:(b+2*R-1)
            if (encoded_msg(j) > lamda)  && (encoded_msg(j+1) < lamda)
                Str(kk) = '1';
            else
                Str(kk) = '0';
            end
            kk = kk +1;
        end 
        Str = strrep(Str, ' ', '');    
        Amp(i)= map(Str);
        T_index = (2*i*R)-1;
        Time(i)= encoded_msg_time(T_index);
        Str = blanks(R);
    end
    
else
    for i=1:length(Amp)
        b=2*R*(i-1)+1;
        kk = 1;
    %perform lternate Mark Inversion Signaling
        for d=b:2:(b+2*R-1)
            if encoded_msg(ceil(d/2)) == 0
                Str(kk) = '0';
            else
                Str(kk) = '1';
            end
            kk = kk +1;
        end 
        Str = strrep(Str, ' ', '');        
        Amp(i)= map(Str);
        T_index = (2*i*R)-1;
        Time(i)= encoded_msg_time(T_index);
        Str = blanks(R);
    end
end
    
    

%figure;
%Amp = lowpass(Amp,3200);
%filename = 'Output.mp3';

d=designfilt('lowpassfir','FilterOrder',5,'CutoffFrequency',2000,'SampleRate',1/Time(1));
Amp = filter(d,Amp);
sound(Amp,1/Time(1));
%load handel.mat

%filename = 'handel.wav';
%audiowrite(filename,Amp,1/Time(1));
end


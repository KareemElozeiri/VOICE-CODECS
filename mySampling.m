function [amplitudesVector,timeVector] = mySampling (filename,fs)
% read the audio file and resample it into the required fs

%read the audiofile
[amplitudes_of_reading,Fs_Of_Reading] = audioread(filename);
%get only one side
amplitudes_of_reading=amplitudes_of_reading(:,1);
%get the ratio between the frequencies
[p,q] = rat(fs / Fs_Of_Reading);
%resample the signal
amplitudesVector = resample(amplitudes_of_reading,p,q);
%get the time vector
timeVector = (0:length(amplitudesVector)-1)/fs;


%sound(amplitudesVector,fs);
%plot(timeVector,amplitudesVector)

end
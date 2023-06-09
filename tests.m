%Test 1

audio_file = "filename"

fs = 4000;

L = 16;
[x,t] = mySampling(audio_file,fs);
[tt, xx] = Quantizer("Mid-rise", t, x, L, (max(x)-min(x))/2);levels = generateLevels("Mid-rise", L,  (max(x)-min(x))/2);
title("Signal/Quantized fs=4000 hz L=16");
[binaryMap, levelsMap] = generateBinaryMap(levels);
[encoded_msg_time, encoded_msg] = Encoder(tt, xx, "Manchester Signaling", binaryMap, L);
figure
stairs(encoded_msg_time(1:40), encoded_msg(1:40));
title("Manchester Signaling fs=4000 hz L=16");
[xxx,ttt]=decoder("Manchester Signaling",encoded_msg_time,encoded_msg,levelsMap, L);
figure
stairs(ttt, xxx)
title("Decoded fs=4000 hz L=16");
filename = '4000_16.wav';
audiowrite(filename,xxx,int64(1/ttt(1)));


figure
L = 64;
[x,t] = mySampling(audio_file,fs);
[tt, xx] = Quantizer("Mid-rise", t, x, L, (max(x)-min(x))/2);levels = generateLevels("Mid-rise", L,  (max(x)-min(x))/2);
title("Signal/Quantized fs=4000 hz L=64");
[binaryMap, levelsMap] = generateBinaryMap(levels);
[encoded_msg_time, encoded_msg] = Encoder(tt, xx, "Manchester Signaling", binaryMap, L);
figure
stairs(encoded_msg_time(1:40), encoded_msg(1:40));
title("Manchester Signaling fs=4000 hz L=64");
[xxx,ttt]=decoder("Manchester Signaling",encoded_msg_time,encoded_msg,levelsMap, L);
figure
stairs(ttt, xxx);
title("Decoded fs=4000 hz L=64");
filename = '4000_64.wav';
audiowrite(filename,xxx,int64(1/ttt(1)));

figure
L = 256;
[x,t] = mySampling(audio_file,fs);
[tt, xx] = Quantizer("Mid-rise", t, x, L, (max(x)-min(x))/2);levels = generateLevels("Mid-rise", L,  (max(x)-min(x))/2);
title("Signal/Quantized fs=4000 hz L=256");
[binaryMap, levelsMap] = generateBinaryMap(levels);
[encoded_msg_time, encoded_msg] = Encoder(tt, xx, "Manchester Signaling", binaryMap, L);
figure
stairs(encoded_msg_time(1:40), encoded_msg(1:40));
title("Manchester Signaling fs=4000 hz L=256");
[xxx,ttt]=decoder("Manchester Signaling",encoded_msg_time,encoded_msg,levelsMap, L);
figure
stairs(ttt, xxx)
title("Decoded fs=4000 hz L=256");
filename = '4000_256.wav';
audiowrite(filename,xxx,int64(1/ttt(1)));


fs = 16000;

L = 16;
[x,t] = mySampling(audio_file,fs);
[tt, xx] = Quantizer("Mid-rise", t, x, L, (max(x)-min(x))/2);levels = generateLevels("Mid-rise", L,  (max(x)-min(x))/2);
title("Signal/Quantized fs=16000 hz L=16");
[binaryMap, levelsMap] = generateBinaryMap(levels);
[encoded_msg_time, encoded_msg] = Encoder(tt, xx, "Manchester Signaling", binaryMap, L);
figure
stairs(encoded_msg_time(1:40), encoded_msg(1:40));
title("Manchester Signaling fs=16000 hz L=16");
[xxx,ttt]=decoder("Manchester Signaling",encoded_msg_time,encoded_msg,levelsMap, L);
figure
stairs(ttt, xxx);
title("Decoded fs=16000 hz L=16");
filename = '16000_16.wav';
audiowrite(filename,xxx,int64(1/ttt(1)));

figure
L = 64;
[x,t] = mySampling(audio_file,fs);
[tt, xx] = Quantizer("Mid-rise", t, x, L, (max(x)-min(x))/2);levels = generateLevels("Mid-rise", L,  (max(x)-min(x))/2);
title("Signal/Quantized fs=16000 hz L=64");
[binaryMap, levelsMap] = generateBinaryMap(levels);
[encoded_msg_time, encoded_msg] = Encoder(tt, xx, "Manchester Signaling", binaryMap, L);
figure
stairs(encoded_msg_time(1:40), encoded_msg(1:40));
title("Manchester Signaling fs=16000 hz L=64");
[xxx,ttt]=decoder("Manchester Signaling",encoded_msg_time,encoded_msg,levelsMap, L);
figure
stairs(ttt, xxx)
title("Decoded fs=16000 hz L=64");
filename = '16000_64.wav';
audiowrite(filename,xxx,int64(1/ttt(1)));

figure
L = 256;
[x,t] = mySampling(audio_file,fs);
[tt, xx] = Quantizer("Mid-rise", t, x, L, (max(x)-min(x))/2);levels = generateLevels("Mid-rise", L,  (max(x)-min(x))/2);
title("Signal/Quantized fs=16000 hz L=256");
[binaryMap, levelsMap] = generateBinaryMap(levels);
[encoded_msg_time, encoded_msg] = Encoder(tt, xx, "Manchester Signaling", binaryMap, L);
figure
stairs(encoded_msg_time(1:40), encoded_msg(1:40));
title("Manchester Signaling fs=16000 hz L=256");
[xxx,ttt]=decoder("Manchester Signaling",encoded_msg_time,encoded_msg,levelsMap, L);
figure
stairs(ttt, xxx)
title("Decoded fs=16000 hz L=256");
filename = '16000_256.wav';
audiowrite(filename,xxx,int64(1/ttt(1)));


fs = 32000;

L = 16;
[x,t] = mySampling(audio_file,fs);
[tt, xx] = Quantizer("Mid-rise", t, x, L, (max(x)-min(x))/2);levels = generateLevels("Mid-rise", L,  (max(x)-min(x))/2);
title("Signal/Quantized fs=32000 hz L=16");
[binaryMap, levelsMap] = generateBinaryMap(levels);
[encoded_msg_time, encoded_msg] = Encoder(tt, xx, "Manchester Signaling", binaryMap, L);
figure
stairs(encoded_msg_time(1:40), encoded_msg(1:40));
title("Manchester Signaling fs=32000 hz L=16");
[xxx,ttt]=decoder("Manchester Signaling",encoded_msg_time,encoded_msg,levelsMap, L);
figure
stairs(ttt, xxx)
title("Decoded fs=32000 hz L=16");
filename = '32000_16.wav';
audiowrite(filename,xxx,int64(1/ttt(1)));


figure
L = 64;
[x,t] = mySampling(audio_file,fs);
[tt, xx] = Quantizer("Mid-rise", t, x, L, (max(x)-min(x))/2);levels = generateLevels("Mid-rise", L,  (max(x)-min(x))/2);
title("Signal/Quantized fs=32000 hz L=64");
[binaryMap, levelsMap] = generateBinaryMap(levels);
[encoded_msg_time, encoded_msg] = Encoder(tt, xx, "Manchester Signaling", binaryMap, L);
figure
stairs(encoded_msg_time(1:40), encoded_msg(1:40));
title("Manchester Signaling fs=32000 hz L=64");
[xxx,ttt]=decoder("Manchester Signaling",encoded_msg_time,encoded_msg,levelsMap, L);
figure
stairs(ttt, xxx)
title("Decoded fs=32000 hz L=64");
filename = '32000_64.wav';
audiowrite(filename,xxx,int64(1/ttt(1)));

figure
L = 256;
[x,t] = mySampling(audio_file,fs);
[tt, xx] = Quantizer("Mid-rise", t, x, L, (max(x)-min(x))/2);levels = generateLevels("Mid-rise", L,  (max(x)-min(x))/2);
title("Signal/Quantized fs=32000 hz L=256");
[binaryMap, levelsMap] = generateBinaryMap(levels);
[encoded_msg_time, encoded_msg] = Encoder(tt, xx, "Manchester Signaling", binaryMap, L);
figure
stairs(encoded_msg_time(1:40), encoded_msg(1:40));
title("Manchester Signaling fs=32000 hz L=256");
[xxx,ttt]=decoder("Manchester Signaling",encoded_msg_time,encoded_msg,levelsMap, L);
figure
stairs(ttt, xxx)
title("Decoded fs=32000 hz L=256");
filename = '32000_256.wav';
audiowrite(filename,xxx,int64(1/ttt(1)));

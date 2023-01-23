load Sample_1.mat
load Sample_2.mat
load Sample_3.mat
load Sample_4.mat
load Sample_5.mat
load Sample_6.mat
load Sample_7.mat
load Sample_8.mat

song=[Sample_1;Sample_2;Sample_3;Sample_4;Sample_5;Sample_6;Sample_7;Sample_8];
song = song(:,1);

chord_len(1) = length(Sample_1);
chord_len(2) = length(Sample_2);
chord_len(3) = length(Sample_3);
chord_len(4) = length(Sample_4);
chord_len(5) = length(Sample_5);
chord_len(6) = length(Sample_6);
chord_len(7) = length(Sample_7);
chord_len(8) = length(Sample_8);

Fs = 22050;
total_len = 0;
figure(1);
for i = 1:8
   len = chord_len(i);
   f = (0:(len-1))*Fs/len;
   y = song(total_len+1:total_len+len,:);
   total_len = total_len + len;
   t = (1:total_len)*1/Fs;

   subplot(211)
      plot(t,song(1:total_len,:));
      title('Time Domain');
      axis([0 (length(song)-1)*1/Fs -0.2 0.2]);
      xlabel('Time (seconds)');
   subplot(212)
      plot(f,abs(fft(y)));
      axis([0 1000 0 400]);
      title('Frequency Domain (Current Segment)');
      xlabel('Frequency (Hz)');
   drawnow;
   soundsc(y,Fs);

%%% uncomment the pause statement below to examine song note by note
% pause;

end



beat_count = 0;
for k = 2 : length(sig)-1
    if(sig(k) &gt; sig(k-1) &amp; sig(k) &gt; sig(k+1) &amp; sig(k) &gt; 1)
        %k
        %disp('Prominant peak found');
        beat_count = beat_count + 1;
    end
end
 
% Divide the beats counted by the signal duration (in minutes)
fs = 100;
N = length(sig);
duration_in_seconds = N/fs;
duration_in_minutes = duration_in_seconds/60;
BPM_avg = beat_count/duration_in_minutes;

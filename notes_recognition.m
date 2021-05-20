function notes_recognition(input)
##  clc; clear all; close all;
  input_file = input;
  [song , FS] = audioread(input_file);

  %%%To plot the song in the time stracture
  ##song = song(:,1);
  ##dt = 1/FS;
  ##t = 0:dt:(length(song)*dt)-dt;
  ##plot(t,song); xlabel('Seconds'); ylabel('Amplitude')
  %%%

  %%%To mark the threshhold in the plot
  ##threshup = .2 * max(song); 
  ##threshdown = .04 * max(song);
  ##
  ##rectX = [0,16];
  ##rectY = [threshup,threshdown];
  ##pch1 = patch(rectX([1,2,2,1]), rectY([1,1,2,2]),'r','EdgeColor','none', 'FaceAlpha', 0.3)
  %%%

  len = length(song); 

  threshup = .20 * max(song);  % 20% of the maximum value
  threshdown = .04 * max(song); % 04% of the minimum value

  quiet=1;  % a flag so we know if we're noisy or quiet right now
  divs(1)=0;
  j=2;
  for i=21:len-20
     if quiet == 1  % we're trying find the begining of a note
        if (max(abs(song(i-20:i+20))) > threshup)
           quiet = 0;  % we found it
           divs(j) = i;  %record this division point
           j=j+1;
        end
    else
        if (max(abs(song(i-20:i+20))) < threshdown)
           quiet = 1;  %note's over
           divs(j) = i;
           j=j+1;
        end
     end
  end
  for i=1:length(divs)/2
      w(i) = (divs(2*i-1) + divs(2*i))/2; %we store the middle of the end and starting point as a note
  end

  num_notes = length(w)-1 %that's the total of notes
  x0=0;y0=0;k=0;
  for i=1:num_notes
    cur_note = song(round(w(i):w(i+1)));  %we point each note on the input file
    len = length(cur_note); %Store the length of the cur note 
    cur_note_fft = abs(fft(cur_note));  %We use fft algorithm on the cur note 
    [~,index] = max(abs(cur_note_fft)); %Store the maximum freq of the cur note 
    characteristic(i) = index*FS/len; %store each notes characteristic freq

    [p, MIDI_num] = findnote(characteristic(i)); %selfcolerration of each freq with coresponding note 
    output_notes{i,1} = p; %cell type output with the string name of each note 
    [x0,y0,k]=DrawMain(x0,y0,k,MIDI_num,4); %draw each note in pentagram as a quarter
  end
end  
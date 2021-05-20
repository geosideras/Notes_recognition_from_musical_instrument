function [p, MIDI_num]= findnote(f)
  
  if f > 127.14 && f <= 134.7
    p = 'C3';	#With freq around 130.81	
    MIDI_num = 0;
    
  elseif f > 134.7 && f <= 142.71
    p = 'C#3/Db3'; 	#With freq around 138.59	
    MIDI_num = 1;
    
  elseif f > 142.71 && f <= 151.195
    p = 'D3';	#With freq around 146.83	
    MIDI_num = 2;
    
  elseif f > 151.195 && f <= 160.185
    p = 'D#3/Eb3'; 	#With freq around 155.56	
    MIDI_num = 3;
    
   elseif f > 160.185 && f <= 169.71
    p = 'E3';	#With freq around 164.81	
    MIDI_num = 4;
    
   elseif f > 169.71 && f <= 179.805
    p = 'F3'; 	#With freq around 174.61	
    MIDI_num = 5;
    
  elseif f > 179.805 && f <= 190.5
    p = 'F#3/Gb3'; 	#With freq around 185.00	
    MIDI_num = 6;
    
   elseif f > 190.5 && f <= 201.825
    p = 'G3';	#With freq around 196.00	
    MIDI_num = 7;
    
  elseif f > 201.825 && f <= 213.825
    p = 'G#3/Ab3'; 	#With freq around 207.65	
    MIDI_num = 8;
    
  elseif f > 213.825 && f <= 226.54
    p = 'A3';	#With freq around 220.00	
    MIDI_num = 9;
    
  elseif f > 226.54 && f <= 240.01
    p = 'A#3/Bb3'; 	#With freq around 233.08	
    MIDI_num = 10;
    
   elseif f > 240.01 && f <= 254.285
    p = 'B3';	#With freq around 246.94	
    MIDI_num = 11;
    
  elseif f > 254.285 && f <= 262.06
    p = 'C4';	#With freq around 261.63	
    MIDI_num = 12;
    
  elseif f > 262.06 && f <= 285.42
    p = 'C#4/Db4'; 	#With freq around 277.18	
    MIDI_num = 13;
    
   elseif f > 285.42 && f <= 302.395
    p = 'D4';	#With freq around 293.66	
    MIDI_num = 14;
    
  elseif f > 302.395 && f <= 320.38
    p = 'D#4/Eb4'; 	#With freq around 311.13	
    MIDI_num = 15;
    
   elseif f > 320.38 && f <= 339.43
    p = 'E4';	#With freq around 329.63
    MIDI_num = 16;
    
  elseif f > 339.43 && f <= 359.61
    p = 'F4';	#With freq around 349.23
    MIDI_num = 17;
    
  elseif f > 359.61 && f <= 380.995
    p = 'F#4/Gb4'; 	#With freq around 369.99
    MIDI_num = 18;
    
   elseif f > 380.995 && f <= 403.65
    p = 'G4';	#With freq around 392.00	
    MIDI_num = 19;
    
  elseif f > 403.65 && f <= 427.65
    p = 'G#4/Ab4'; 	#With freq around 415.30
   MIDI_num = 20;
   
   elseif f > 427.65 && f <= 453.08
    p = 'A4';	#With freq around 440.00	
    MIDI_num = 21;
    
  elseif f > 453.08 && f <= 480.02
    p = 'A#4/Bb4'; 	#With freq around 466.16
   MIDI_num = 22;
   
   elseif f > 480.02 && f <= 508.565
    p = 'B4';	#With freq around 493.88	
    MIDI_num = 23;
    
  elseif f > 508.565 && f <= 538.81
    p = 'C5';	#With freq around 523.25	
    MIDI_num = 24;
    
  elseif f > 538.81 && f <= 570.85
    p = 'C#5/Db5'; 	#With freq around 554.37
    MIDI_num = 25;
    
   elseif f > 570.85 && f <= 604.79
    p = 'D5';	#With freq around 587.33	
    MIDI_num = 26;
    
  elseif f > 604.79 && f <= 640.75
    p = 'D#5/Eb5'; 	#With freq around 622.25
    MIDI_num = 27;
    
   elseif f > 640.75 && f <= 678.855
    p = 'E5';	#With freq around 659.25	
    MIDI_num = 28;
    
  elseif f > 678.855 && f <= 719.225
    p = 'F5	';#With freq around 698.46	
    MIDI_num = 29;
    
  elseif f > 719.225 && f <= 761.99
    p = 'F#5/Gb5'; 	#With freq around 739.99
    MIDI_num = 30;
    
   elseif f > 761.99 && f <= 807.3
    p = 'G5';	#With freq around 783.99	
    MIDI_num = 31;
    
  elseif f > 807.3 && f <= 855.305
    p = 'G#5/Ab5'; 	#With freq around 830.61
    MIDI_num =   32;
    
   elseif f > 855.305 && f <= 906.165
    p = 'A5';	#With freq around 880.00	
    MIDI_num = 33;
    
  elseif f > 906.165 && f <= 960.05
    p = 'A#5/Bb5'; 	#With freq around 932.33
    MIDI_num = 34;
    
   elseif f > 960.05 && f <= 1017.135
    p = 'B5'; 	#With freq around 987.77
    MIDI_num = 35;
    
   else
    p = 'Note is out of acceptable range!';
    MIDI_num = 0;
end
end
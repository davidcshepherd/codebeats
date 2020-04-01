use_bpm 93

live_loop :hat do
  sample :drum_cymbal_pedal
  sleep 0.5
end

live_loop :snare do
  sleep 1
  sample :sn_generic
  sleep 1
end

live_loop :bassdrum do
  sample :drum_bass_hard
  sleep 2
end

#try adding a sample to your beat!
live_loop :sample do
  sleep 8
end

#add a percussion instrument... like the "more cowbell" exercise
live_loop :morePercussion, amp: 0.2 do
  sleep 8
end

#add some chords! 
#if you don't know much about chords, 
#just use A minor for 8 beats and G major for 8 beats
live_loop :chords do
  use_synth :dark_ambience
  sleep 8
end

#if you make it this far, I'm impressed!
#add a melody to your song... much like Day 3.
live_loop :melody, amp: 0.1 do
  use_synth :blade
  use_synth_defaults amp: 0.35
  sleep 8
end



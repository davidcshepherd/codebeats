use_bpm 80

live_loop :scratch do
  sleep 4
end

live_loop :percussion do
  sleep 4
end

live_loop :bassLine do
  use_synth :blade
  use_synth_defaults amp: 0.4
  
  #  In the first measure (4 beats), you can play the following notes, in ANY rhythm:
  #    A2, B2, C3, D3, E3, Fs3, G3, A3
  #  Note: to use note F#7 in Sonic-Pi - use Fs7
  #
  #  You should emphasize (play more often) these notes:
  #    A2, C3, E3
  #
  #  Tip: the sleeps must add up to 4.0 in total.
  ##################################
  sleep 4 # remove this "sleep" and write your code here!
  
  #  To do a better song (with the background song), at the second
  #  measure (4 beats), you can play the following notes, in ANY rhythm:
  #    E2, Fs2, G2, A2, B2, C3, D3, E3
  #     - to use note F#6 in Sonic-Pi - use Fs6
  #
  #  You should emphasize (play more time) these notes:
  #    E2, G2, B2
  #
  #  Tip: the sleeps must add up to 4.0 in total.
  #   - it means the all sleeps toghether have to add up 4 in total
  ##################################
  sleep 4 # remove this "sleep" and write your code here!
end

live_loop :melody do
  #  In the first measure (4 beats), you can play the following notes, in ANY rhythm:
  #    A6, B6, C7, D7, E7, F#7, G7, A7
  #  Note: to use note F#7 in Sonic-Pi - use Fs7
  #
  #  You should emphasize (play more often) these notes:
  #    A6, C7, E7
  #
  #  Tip: the sleeps must add up to 4.0 in total.
  ##################################
  
  sleep 4 # remove this "sleep" and write your code here!
  
  #  To do a better song (with the background song), at the second
  #  measure (4 beats), you can play the following notes, in ANY rhythm:
  #    E6, F#6, G6, A6, B6, C7, D7, E7
  #     - to use note F#6 in Sonic-Pi - use Fs6
  #
  #  You should emphasize (play more time) these notes:
  #    E6, G6, B6
  #
  #  Tip: the sleeps must add up to 4.0 in total.
  #   - it means the all sleeps toghether have to add up 4 in total
  ##################################
  
  sleep 4 # remove this "sleep" and write your code here!
end


live_loop :tick do
  sample :drum_tom_lo_soft
  sleep 1
end


live_loop :snare do
  use_sample_defaults amp: 0.5
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.5
  sample :drum_snare_hard
  sleep 0.5
end

live_loop :chords do
  use_synth :hollow
  play chord(:a4, :minor, invert: 1), release: 6
  sleep 4
  play_chord chord(:e4, :minor, invert: 1), release: 6
  sleep 4
end

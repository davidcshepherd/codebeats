use_bpm 60

live_loop :sample do
  #add a sample, like a scratch or robot
  sleep 8
end

live_loop :percussion do
  #add some percussion, like more cowbell
  sleep 8
end

live_loop :bassLine do
  # To match the background music, you can play the following notes:
  #    D1, E1, F1, G1, A1, B1, and C2
  #  You should emphasize these notes:
  #    D1, F1, A1
  use_synth :tb303
  use_synth_defaults amp: 0.2
  sleep 8
end

live_loop :melody do
  # To match the background music, you can play the following notes:
  #    D5, E5, F5, G5, A5, B5, and C6
  #  You should emphasize these notes:
  #    D5, F5, A5
  sleep 8
end

live_loop :chords do
  use_synth_defaults amp: 0.5
  play chord(:d3, :minor), release: 4
  sleep 4
  play chord(:bb3, :major7), release: 4
  sleep 4
end


live_loop :bassDrum do
  sample :drum_bass_hard
  sleep 0.5
  sample :drum_bass_hard
  sleep 0.5
  sleep 0.5
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.5
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.75
  sleep 0.75
end

live_loop :clap do
  sleep 1
  sample :perc_snap2
  sleep 1
end

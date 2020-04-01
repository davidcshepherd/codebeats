use_bpm 93

live_loop :hat do
  sample :drum_cymbal_pedal
  sleep 0.5
end

live_loop :bassdrum do
  sample :drum_bass_hard
  sleep 2
end

live_loop :scratch do
  sleep 7
  sample :vinyl_scratch
  sleep 1
end

live_loop :melody do
  use_synth :blade
  use_synth_defaults amp: 0.35
  sleep 0.75
  play :g6, release: 0.2
  sleep 0.25
  play :a6, release: 0.5
  sleep 0.5
  play :b6, release: 0.5
  sleep 0.5
  play :c7, release: 0.5
  sleep 0.5
  play :b6, release: 0.5
  sleep 0.5
  play :a6, release: 0.5
  sleep 0.5
  play :g6, release: 0.5
  sleep 0.5
  play :a6, release: 4
  sleep 4
  
  sleep 0.75
  play :g6, release: 0.2
  sleep 0.25
  play :a6, release: 0.5
  sleep 0.5
  play :b6, release: 0.5
  sleep 0.5
  play :c7, release: 0.5
  sleep 0.5
  play :b6, release: 0.5
  sleep 0.5
  play :a6, release: 0.5
  sleep 0.5
  play :g6, release: 0.5
  sleep 0.5
  play :b6, release: 1
  sleep 1
  play :g6, release: 1
  sleep 1
  play :e6, release: 1
  sleep 1
  play :g6, release: 1
  sleep 1
end



live_loop :chords do
  use_synth :dark_ambience
  play_chord chord(:A5, :minor), release: 8
  sleep 8
  play_chord chord(:G5, :major), release: 8
  sleep 8
end

live_loop :snare do
  sleep 1
  sample :sn_generic
  sleep 1
end

live_loop :triangle, amp: 0.2 do
  sample :elec_triangle
  sleep 0.25
  sample :elec_triangle
  sleep 0.5
  sample :elec_triangle
  sleep 0.25
  sample :elec_triangle
  sleep 0.5
  sample :elec_triangle
  sleep 0.25
  sample :elec_triangle
  sleep 0.25
  sleep 2
end
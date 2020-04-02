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
  #    Eb2, Fb2, Gb2, Ab2, Bb2, Cb3, Db3
  #  You should emphasize these notes:
  #    Eb2, Gb2, Bb2
  use_synth_defaults amp: 0.45
  use_synth :tech_saws
  sleep 8
end

live_loop :melody do
  #To match the background music, you can play the following notes:
  #    Eb5, Fb5, Gb5, Ab5, Bb5, Cb6, Db6
  #
  #  You should emphasize these notes:
  #    Eb5, Gb5, Bb5
  sleep 8
end

live_loop :chords do
  use_synth :prophet
  play chord(:eb3, :minor), release: 0.25
  sleep 1.5
  play chord(:eb3, :minor), release: 0.5
  sleep 0.5
  play chord(:eb3, :minor), release: 0.25
  sleep 1.5
  play chord(:eb3, :minor), release: 0.25
  sleep 0.25
  play chord(:eb3, :minor), release: 0.25
  sleep 0.25
end

live_loop :bassDrum do
  sample :drum_bass_hard
  sleep 1.75
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 1.75
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 3.25
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.25
  sample :drum_bass_hard
  sleep 0.25
end

live_loop :tick do
  sample :drum_cymbal_pedal
  sleep 0.5
end

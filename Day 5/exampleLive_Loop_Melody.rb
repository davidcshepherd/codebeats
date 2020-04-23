# You can increase or decrease the velocity of your sound
# BPM = Beats per Minute
use_bpm 93

# We can use multiple live_loop
# It is important that they are multiple of 4
live_loop :melody do
  use_synth :piano
  use_synth_defaults amp: 0.5
  play :eb4, release: 0.2
  sleep 0.5
  play :fb4, release: 0.2
  sleep 0.5
  play :eb4, release: 0.2
  sleep 0.5
  play :fb4, release: 0.2
  sleep 0.5
  use_synth :pluck
  play :eb4, release: 0.2
  sleep 0.5
  play :fb4, release: 0.2
  sleep 0.5
  play :eb4, release: 0.2
  sleep 0.5
  play :fb4, release: 0.2
  sleep 0.5
end

live_loop :kick do
  # you can control the amp for a group of samples
  use_sample_defaults amp: 0.8
  sample :drum_heavy_kick
  sleep 0.5
  sample :drum_heavy_kick
  sleep 1
  sample :drum_heavy_kick
  sleep 0.5
  sample :drum_heavy_kick
  sleep 1
  sample :drum_heavy_kick
  sleep 1
end

# A different live_loop - using another sample
# You can use different samples at the same live_loop too
live_loop :cymbal do
  use_sample_defaults amp: 1
  sleep 1
  sample :drum_cymbal_pedal
  sleep 1.5
  sample :drum_cymbal_pedal
  sleep 1.5
end

# Live_loop with only one sample, using 8 as sleep
live_loop :slide do
  use_sample_defaults amp: 0.5
  sleep 8
  sample :guit_e_slide
end

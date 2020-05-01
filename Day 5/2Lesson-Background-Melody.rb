# You can increase or decrease the velocity of your sound
# BPM = Beats per Minute
use_bpm 90

# Fifth activity
# Create your beat using melody and samples with different live_loops
# Remember to have all the live_loops with the same
# total of sleeps (the sum of value of your sleeps)
# you can use as many live_loops as you wish
# be creative ;-)

# Note that this file is very similar with the base file for Fourth Activity
# if you wish you can use your file from Fourth Activity and only include the
# melody live_loop (the first live_loop)

# First live_loop - here you can create your melody
live_loop :melody do
  # You can choose any synth that you would like to use
  use_synth :beep
  use_synth_defaults amp: 1
  #  You can use some chords to create your melody, for example:
  #  - You can play the following notes:
  #    Eb5, Fb5, Gb5, Ab5, Bb5, Cb6, Db6
  #  - You should emphasize these notes:
  #    Eb5, Gb5, Bb5
  #
  # or
  #
  #  - You can play the following notes:
  #    D5, E5, F5, G5, A5, B5, and C6
  #  - You should emphasize these notes:
  #    D5, F5, A5
  #
  # or
  #
  #  - You can play the following notes:
  #    A2, B2, C3, D3, E3, Fs3, G3, A3
  #  - You should emphasize these notes:
  #    A2, C3, E3
  #
  # or
  #
  #  - You can play the following notes:
  #    E2, Fs2, G2, A2, B2, C3, D3, E3
  #  - You should emphasize these notes:
  #    E2, G2, B2
  #
  # or
  #
  #  - You can play the following notes:
  #    E6, F#6, G6, A6, B6, C7, D7, E7
  #  - You should emphasize these notes:
  #    E6, G6, B6
  
  sleep 4
end

# Second live_loop using one sample
live_loop :drum1 do
  # you can control the amp for a group of samples
  use_sample_defaults amp: 1
  # You can alter the code below by:
  # -Changing the sleep values
  # -Changing the sample
  # -Adding more samples
  # -Adding more sleeps
  # Emphasize beat #1 in this loop.
  sample :drum_heavy_kick
  sleep 2.5
  sample :drum_heavy_kick
  sleep 1.5
end

# A different live_loop - using another sample
# You can use different samples at the same live_loop too
live_loop :drum2 do
  use_sample_defaults amp: 1
  # You can alter the code below by:
  # -Changing the sleep values
  # -Changing the sample
  # -Adding more samples
  # -Adding more sleeps
  # Emphasize beats #2 and #4 in this loop.
  sleep 1
  sample :sn_dolf
  sleep 2
  sample :sn_dolf
  sleep 1
end

live_loop :add_sample1 do
  use_sample_defaults amp: 1
  # You can insert your samples here
  sleep 4
end

live_loop :add_sample2 do
  use_sample_defaults amp: 1
  # You can insert your samples here
  sleep 4
end
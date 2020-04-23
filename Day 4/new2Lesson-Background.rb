# You can increase or decrease the velocity of your sound
# BPM = Beats per Minute
use_bpm 90

# Fourth activity
# Create your beat using only samples and different live_loops
# Remember to have all the live_loops with the same
# total of sleeps (the sum of value of your sleeps)
# you can use as many live_loops as you wish
# be creative ;-)

# First live_loop using one sample
live_loop :drum1 do
  # you can control the amp for a group of samples
  use_sample_defaults amp: 1
  # You can insert your samples here
  sleep 4
end

# A different live_loop - using another sample
# You can use different samples at the same live_loop too
live_loop :drum2 do
  use_sample_defaults amp: 1
  # You can insert your samples here
  sleep 4
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
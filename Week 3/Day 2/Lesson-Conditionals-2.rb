use_bpm 130
# Conditionals Activity - II
#
# Use variables and conditionals to create new layer (or melody)
# that change the pattern during the execution.
#
# Note that the song is being changed during its execution.
#
# You can use one or more conditionals and variables.
#
# Comparisons:
#  == compare if the value is equal
#  < compare if the value on the left is lower
#    than the value on the right
#  > compare if the value on the left is greater
#    than the value on the right
#  You can use = with the < and > if you would like
#  to compare if its equal or lower/greater
#
# Tip: Execute the song without any changes to check
#      how it is, then start to do your code
#
# You already have an idea about what you can do:

counter = 0

live_loop :conditional do
  if counter < 16
    # Execute a (group) command(s) if the counter is lower than 16
  else
    if counter > 32
      # If counter is greater than 32, restart the counter
      counter = 0
    end
    # Execute a (group) command(s) if the counter is greater than 15
  end
  sleep 1
  # Add one in the counter
  counter = counter + 1
end

##########################################################
# Please, do not change the code below, it is the background song for your activity :D

#Russian Cream

beats = 2.0
measures = 4.0

####################################################################
#
# Functions:
#
####################################################################

# First melody:  1 measure long
define :melody1 do
  with_fx :gverb, mix: 0.1 do
    use_synth :piano
    play :Eb4, sustain: 6, hard: 0.01, amp: 0.3, decay: 1
    play :G4, sustain: 6, hard: 0.01, amp: 0.3, decay: 1
    sleep 2 * beats
    play :Bb4, sustain: 6, hard: 0.01, amp: 0.3, decay: 1
    play :Eb4, sustain: 6, hard: 0.01, amp: 0.3, decay: 1
    sleep 2 * beats
  end
end

# Second melody:  2 beats long
define :melody2 do
  sleep 0.5 * beats
  with_fx :gverb, mix: 0.1 do
    use_synth :piano
    play :D5, hard: 0.01, amp: 0.3
    sleep 0.5 * beats
    play :D5, hard: 0.01, amp: 0.3
    sleep 0.5 * beats
    play :Eb5, hard: 0.01, amp: 0.3
    sleep 0.5  * beats
  end
end

# Third melody:  1 measure long
define :melody3 do
  with_fx :gverb, mix: 0.1 do
    use_synth :piano
    play :Eb5, sustain: 6, hard: 0.01, amp: 0.3, decay: 1
    play :G5, sustain: 6, hard: 0.01, amp: 0.3, decay: 1
    sleep 1 * beats
    play :D5, sustain: 6, hard: 0.01, amp: 0.3, decay: 1
    play :G5, sustain: 6, hard: 0.01, amp: 0.3, decay: 1
    sleep 1 * beats
    play :G5, sustain: 6, hard: 0.01, amp: 0.3, decay: 1
    play :Bb5, sustain: 6, hard: 0.01, amp: 0.3, decay: 1
    sleep 1 * beats
    play :Eb5, sustain: 6, hard: 0.01, amp: 0.3, decay: 1
    play :G5, sustain: 6, hard: 0.01, amp: 0.3, decay: 1
    sleep 1 * beats
  end
end

# Fourth melody:  2 beats long
define :melody4 do
  sleep 0.25 * beats
  with_fx :gverb, mix: 0.1 do
    use_synth :piano
    play :D6, hard: 0.01, amp: 0.3
    sleep 0.25 * beats
    play :D6, hard: 0.01, amp: 0.3
    sleep 0.25 * beats
    play :Eb6, hard: 0.01, amp: 0.3
    sleep 0.25  * beats
  end
end

# Chime:  2 beats long
define :chime do
  with_fx :lpf, cutoff: 90 do
    sleep 0.5 * beats
    sample :perc_bell, amp: 0.15, rate: 1.2, pan: 1
  end
  sleep 1.5 * beats
end

define :hiHats do
  sample :drum_cymbal_closed, amp: 0.25, sustain: 0.1, rate: 2
  sleep 0.5
end

define :drums do
  sample :bd_gas
  sleep 1.5
  sample :bd_gas
  sleep 0.5
  sample :drum_snare_soft, amp: 1#, release: 0.00001
  sleep 1
  sample :bd_gas
  sleep 0.5
  sample :bd_gas
  sleep 1.5
  sample :bd_gas
  sleep 1
  sample :drum_snare_soft, amp: 1#, release: 0.00001
  sleep 0.5
  sample :bd_gas
  sleep 1.5
end

define :drums2 do
  sample :bd_gas
  sleep 1.5
  sample :bd_gas
  sleep 1.5
  sample :bd_gas
  sleep 0.5
  sample :bd_gas
  sleep 1.5
  sample :bd_gas
  sleep 1.5
  sample :bd_gas
  sleep 1.5
end

define :bass do
  with_fx :lpf, cutoff: :g3, amp: 0.35 do
    #with_fx :distortion, amp: 0.5 do
    use_synth :tri
    play :G1, sustain: 3.0/16 * measures, release: 0
    sleep 3.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0
    sleep 3.0/16 * measures
    play :G1, sustain: 1.0/16 * measures, release: 0
    sleep 1.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0
    sleep 3.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0
    sleep 3.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0
    sleep 3.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0
    sleep 3.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0
    sleep 3.0/16 * measures
    play :G1, sustain: 1.0/16 * measures, release: 0
    sleep 1.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0
    sleep 3.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0
    sleep 3.0/16 * measures
    play :D2, sustain: 3.0/16 * measures, release: 0
    sleep 3.0/16 * measures
    #end
  end
end


define :bass2 do
  with_fx :level, amp: 0 do
    use_synth :square
    play :G1, sustain: 3.0/16 * measures, release: 0, amp: 0.025
    sleep 3.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0, amp: 0.025
    sleep 3.0/16 * measures
    play :G1, sustain: 1.0/16 * measures, release: 0, amp: 0.025
    sleep 1.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0, amp: 0.025
    sleep 3.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0, amp: 0.025
    sleep 3.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0, amp: 0.025
    sleep 3.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0, amp: 0.025
    sleep 3.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0, amp: 0.025
    sleep 3.0/16 * measures
    play :G1, sustain: 1.0/16 * measures, release: 0, amp: 0.025
    sleep 1.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0, amp: 0.025
    sleep 3.0/16 * measures
    play :G1, sustain: 3.0/16 * measures, release: 0, amp: 0.025
    sleep 3.0/16 * measures
    play :D2, sustain: 3.0/16 * measures, release: 0, amp: 0.025
    sleep 3.0/16 * measures
  end
end


####################################################################
#
# Sequencing:
#
####################################################################


in_thread do
  loop do  # Each loop 38 measures total
    16.times do  # 16 measures
      melody1
    end
    4.times do  # 4 measures
      melody3
    end
    4.times do  # 4 measures
      melody1
    end
    4.times do  # 4 measures
      melody3
    end
    10.times do  # 10 measures
      melody1
    end
    
  end
end

in_thread do
  loop do
    32.times do  #16 measures
      melody2
    end
    16.times do  # 4 measures
      melody4
    end
    8.times do  # 4 measures
      melody2
    end
    16.times do  # 4 measures
      melody4
    end
    20.times do  # 10 measures
      melody2
    end
    
  end
end

# Hi hats
in_thread do
  sleep 4 * measures
  loop do
    hiHats
  end
end

# Chime
in_thread do
  ch = 0
  sleep 4 * measures
  loop do
    6.times do  # 3 measures
      chime
    end
    1.times do  # 1 measure
      sleep 1 * measures
    end
    60.times do  # 30 measures
      chime
    end
    sleep 4 * measures
  end
end

# Kick and snare
in_thread do
  sleep 4 * measures
  loop do
    3.times do
      drums
    end
    1.times do
      drums2
    end
    30.times do
      drums
    end
    sleep 4 * measures
  end
end

# Sine bass
in_thread do
  sleep 8 * measures
  loop do
    6.times do  # 12 measures
      bass
    end
    1.times do
      sleep 4 * measures
    end
    2.times do  # 4 measures
      bass
    end
    1.times do
      sleep 4 * measures
    end
    3.times do  # 6 measures
      bass
    end
    sleep 8 * measures
  end
end

# Square bass
in_thread do
  sleep 8 * measures
  loop do
    6.times do  # 12 measures
      bass2
    end
    1.times do
      sleep 4 * measures
    end
    2.times do  # 4 measures
      bass2
    end
    1.times do
      sleep 4 * measures
    end
    3.times do  # 6 measures
      bass2
    end
    sleep 8 * measures
  end
end
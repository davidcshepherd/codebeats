# Kendrick Lamar - Humble

run_file 'SET FILE PATH HERE!!!!!!!!!!!!!!!'

set_mixer_control! amp: 1

set :bassNKickVol, 1

use_bpm  75

#resetTime

# Functions ########################################

define :piano do
  use_synth :piano
  8.times do
    play (ring :Eb3, :Eb3, :E3, :Eb3, :Ab2, :Ab2, :Ab2, :E3).tick(:bassTick)
    sleep (ring 0.5, 1, 0.5, 0.5, 0.25, 0.5, 0.25, 0.5).tick(:bassZTick)
  end
  
end

define :hats do
  with_fx :level, amp: 1 do
    4.times do
      sample :drum_cymbal_closed
      sleep 0.5
    end
    2.times do
      sample :drum_cymbal_closed
      sleep 0.125
    end
    sleep 0.25
    6.times do
      sample :drum_cymbal_closed
      sleep 0.25
    end
  end
end

define :openHat do
  1.times do
    sleep 0.5
    openHatNode = sample :drum_cymbal_open, amp: 0.34
    sleep 0.5
    control openHatNode, amp: 0
  end
end

define :snare do
  with_fx :level, amp: 1 do
    #with_fx :eq, low_q: 1, low_note: 35, low: -3 do
    2.times do
      sleep 1
      sample :drum_snare_hard #, amp: 0.2, lpf: 128
      sleep 1
    end
    #end
  end
end

define :kick do
  with_fx :level, amp: 1 do
    #with_fx :eq, low_q: 1, low_note: 35, low: -3 do
    12.times do
      sample :drum_bass_hard
      sleep (ring 1.75, 0.5, 0.5, 0.75, 0.5, 0.25, 1.5, 0.5, 0.5, 0.25, 0.5, 0.4).tick(:kickTick)
    end
  end
end

define :bass do
  with_fx :level, amp: 1.25 do
    #with_fx :eq, low_q: 1, low_note: 35, low: -3 do
    use_synth :tri
    7.times do
      bassNode = play (ring :Eb1, :Eb1, :Gb1, :Gb1, :Gb1, :Db1, :Db1).tick(:bassTick)
      sleep (ring 0.25, 1.5, 0.5, 0.5, 0.25, 0.5, 0.4).tick(:bassSleepTick)
      control bassNode, amp: 0
    end
  end
end



# Loops #########################################



live_loop :piano do
  sync :piano
  piano
end

live_loop :hats do
  sync :hats
  hats
end

live_loop :openHat do
  sync :openHat
  openHat
end

live_loop :snare do
  sync :snare
  snare
end

live_loop :kick do
  sync :kick
  kick
end

live_loop :bass do
  sync :bass
  bass
end


#resetTime
#setBnB 21, 1

live_loop :conductor do
  #time
  looper 1, 9
  
  counter
  
  sequencer :piano, 1, 1, 1, 8, 4
  sequencer :hats, 1, 1, 1, 8, 4
  sequencer :openHat, 1, 1, 1, 8, 4
  sequencer :snare, 1, 1, 1, 8, 4
  sequencer :kick, 2, 1, 1, 8, 4
  sequencer :bass, 1, 1, 1, 8, 4
  
  sleep 1
  
  time
  
end


# Welcome to Sonic Pi v3.1


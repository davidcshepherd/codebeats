use_bpm  75

live_loop :melody, sync: :start do
  use_synth :tech_saws
  use_synth_defaults amp: 0.6
  ##### First activity - First measure #####
  #  Create a melody that makes sense with the song that is playing
  #  in background.
  #
  #  Use the play command followed by : and the note, for example:
  #    play :Ef5
  #
  #  After the play (in following row), use the sleep command
  #  expressing the period of time that you want to play the
  #  note placed at the "play" above, for example:
  #    sleep 1
  #
  #  It means that the note will play for 1 beat.
  #
  #  To match the background music, you can play the following notes:
  #    Eb5, Fb5, Gb5, Ab5, Bb5, Cb6, Db6
  #
  #  You should emphasize these notes:
  #    Eb5, Gb5, Bb5
  #
  #  Tip: the sleeps must add up to 4.0 in total.
  #  Tip: Fb5 is a FUNKY note!
  #  Tip: upload to https://bit.ly/submitBeats when done!
  ##################################
  # Example:
  # play :eb5
  # sleep 1
  # play :eb5
  # sleep 1
  # play :eb5
  # sleep 1
  # play :eb5
  # sleep 1
  sleep 4
  ##################################
end

# Time - inlined

define :resetTime do
  set :beat, 1
  set :bar, 1
end

define :getBar do
  get[:bar]
end

define :getBeat do
  get[:beat]
end

define :setBar do |a|
  set :bar, a
end

define :setBeat do |a|
  set :beat, a
end

define :setBnB do |bar, beat|
  set :bar, bar
  set :beat, beat
end

define :time do
  if (getBeat < 4)
    setBeat (getBeat + 1)
  else
    setBeat 1
    setBar (getBar + 1)
  end
end

define :looper do |loopBegin, loopEnd|
  if (getBar == loopEnd)  # Loop
    setBar loopBegin
  end
end

define :sequencer do |cueName, length, startBar, startBeat, endBar, endBeat|
  
  if (getBar >= startBar && getBar <= endBar)
    if ((getBar - startBar) % length == 0)
      if (getBeat == startBeat)
        cue cueName
      end
    end
  end
  
end

define :counter do
  print "bar: " + getBar.to_s + " beat: " + getBeat.to_s
end


# Kendrick Lamar - Humble

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


resetTime
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


# Scroll back to the top!

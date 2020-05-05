use_bpm  77

live_loop :melody, sync: :start do
  use_synth :tech_saws
  use_synth_defaults amp: 0.8
  ##### Eighth activity - First measure #####
  #  Create a melody AND rhythm that makes sense with the song that
  #  is playing in background.
  #
  #  Use the "play" command followed by ":" and the note, for example:
  #    play :A6
  #
  #  Note that you can alter the play command by changing its "release":
  #    release - the time it takes for the note to fade away
  #
  #  Example using "release":
  #    play :A6, release: 0.5
  #
  #  After "play" (in the following row), use the "sleep" command
  #  expressing the period of time that you want to play the
  #  note placed at the "play" above, for example:
  #    sleep 1
  #
  #  This will cause the melody to pause for 1 beat.
  #
  #  In the first measure (4 beats), you can play the following notes, in ANY rhythm:
  #    A6, B6, C7, D7, E7, F#7, G7, A7
  #  Note: to use note F#7 in Sonic-Pi - use Fs7
  #
  #  You should emphasize (play more often) these notes:
  #    A6, C7, E7
  #
  #  Tip: the sleeps must add up to 4.0 in total.
  #  Tip2: You can use repetitions!
  ##################################
  # Example:
  # play :A6, release: 1
  # sleep 1
  
  sleep 4 # remove this "sleep" and write your code here!
  
  
  ##### Eighth activity - Second measure #####
  #  At the second part, you can use again the play and sleep
  #
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
  # Example:
  # play :E6, release: 1
  # sleep 1
  
  sleep 4 # remove this "sleep" and write your code here!
  
  ##################################
end

# Please, do not change the code below, it is the background song for your activity :D

# Time Functions

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
    setBar (getBar + 1)
    setBeat 1
  end
end

define :looper do |loopBegin, loopEnd|
  if (getBar >= loopEnd)  # Loop
    setBar loopBegin
  end
end

define :sequencer do |cueName, length, startBar, startBeat, endBar, endBeat|
  
  if (getBar >= startBar && getBar < endBar)
    if ((getBar - startBar) % length == 0)
      if (getBeat == startBeat)
        cue cueName
      end
    end
  end
  
end

define :counter do
  puts "bar: " + getBar.to_s + " beat: " + getBeat.to_s
end

# DaBaby - Vibez

set_mixer_control! amp: 1

set :bassNKickVol, 1

resetTime

# Functions ########################################

define :piano do
  with_fx :level, amp: 0.54 do
    use_synth :piano
    sleep 0.5
    7.times do
      play (ring :Eb5, :Ab4, :A4, :Gb4, :Db3, :Eb3, :E3).tick(:pianoTick)
      sleep 0.5
    end
  end
end

define :piano2 do
  with_fx :level, amp: 0.54 do
    use_synth :piano
    sleep 0.5 - 0.03125
    3.times do
      play (ring :Ab2, :Gb2, :A2).tick(:piano2Tick)
      sleep (ring 1.03125, 0.5, 2).tick(:piano2ZTick)
    end
  end
end

define :strings do
  with_fx :level, amp: 0.4 do
    use_synth :chiplead
    2.times do
      stringsNode = play (ring [:Db4, :E4, :Ab4, :Db5], [:Gb4, :A4, :Eb5]).tick(:stringsTick), sustain: 1, release: 0
      sleep (ring 1.5, 2.49).tick(:stringsZTick)
    end
  end
end


define :hats do
  with_fx :level, amp: 0.75 do
    2.times do
      sample :drum_cymbal_closed
      sleep 0.25
    end
    3.times do
      sample :drum_cymbal_closed
      sleep 0.125
    end
    sleep 0.125
    4.times do
      sample :drum_cymbal_closed
      sleep 0.25
    end
    3.times do
      sample :drum_cymbal_closed
      sleep 0.125
    end
    sleep 0.125
    6.times do
      sample :drum_cymbal_closed
      sleep 0.25
    end
  end
end

define :snare do
  with_fx :level, amp: 0.7 do
    #with_fx :eq, low_q: 1, low_note: 35, low: -3 do
    1.times do
      sleep 1
      sample :drum_snare_hard #, amp: 0.2, lpf: 128
      sleep 1.25
      sample :drum_snare_hard #, amp: 0.2, lpf: 128
      sleep 0.75
      sample :drum_snare_hard #, amp: 0.2, lpf: 128
      sleep 1
    end
    #end
  end
end

define :kick do
  with_fx :level, amp: 1.1 do
    #with_fx :eq, low_q: 1, low_note: 35, low: -3 do
    1.times do
      sample :drum_bass_hard
      sleep 4
    end
  end
end

define :bass do
  with_fx :level, amp: 1.38 do
    use_synth :tri
    4.times do
      bassNode = play (ring :Db1, :Eb2, :E2, :E2).tick(:bassTick),
        release: (ring 1, 0.5, 0.5, 0.5).tick(:bassReleaseTick)
      sleep (ring 2.5, 0.5, 0.5, 0.5).tick(:bassSleepTick)
      control bassNode, amp: 0
    end
  end
end



# Loops #########################################



live_loop :piano do
  sync :piano
  piano
end

live_loop :piano2 do
  sync :piano2
  piano2
end

live_loop :strings do
  sync :strings
  strings
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
  looper 1, 17
  cue :start
  
  counter
  
  sequencer :piano, 1, 1, 1, 17, 1
  sequencer :piano2, 1, 1, 1, 17, 1
  sequencer :strings, 1, 1, 1, 9, 1
  sequencer :hats, 1, 1, 1, 17, 1
  sequencer :snare, 1, 1, 1, 17, 1
  sequencer :kick, 1, 1, 1, 17, 1
  sequencer :bass, 1, 1, 1, 17, 1
  
  sleep 1
  
  time
  
end

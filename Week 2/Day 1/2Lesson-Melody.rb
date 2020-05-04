use_bpm  74

live_loop :melody, sync: :conductor do
  use_synth :tech_saws
  use_synth_defaults amp: 0.6
  ##### Sixth activity #####
  #  Create a melody that makes sense with the song that is playing
  #  in background.
  #
  #  You can play the following notes:
  #    Ab4, Bb4, Cb5, Db5, Eb5, Fb5, Gb5
  #  And you should emphasize these notes:
  #    Ab4, Cb5, Eb5
  #
  #  You can use samples too!
  #
  #  Try to use repetitions, for example:
  #  8.times do
  #    play Ab4, release: 0.5
  #    sleep 0.5
  #  end
  #
  #  The example above have a total of 4.0 in sleep
  #
  #  Tip: the sleeps must add up to 4.0 in total.
  #  Tip2: could be some value multiple of 4.0 too.
  #  Tip3: try to combine the number of repetitions
  #        with the value at command sleep, so you can
  #        check the total amount of time!
  ##################################
  
  sleep 4
  ##################################
end

# Please, do not change the code below, it is the background song for your activity :D

# K Camp - Lottery (Renegade)

set_mixer_control! amp: 1

set :bassNKickVol, 1

#use_bpm  74

resetTime

# Functions ########################################

define :hats do
  with_fx :level, amp: 0.9 do
    16.times do
      sample :drum_cymbal_closed
      sleep 0.25
    end
  end
end

define :snare do
  with_fx :level, amp: 0.85 do
    #with_fx :eq, low_q: 1, low_note: 35, low: -3 do
    2.times do
      sleep 1
      sample :drum_snare_hard #, amp: 0.2, lpf: 128
      sleep 1
    end
    #end
  end
end

define :snare2 do
  with_fx :level, amp: 0.85 do
    #with_fx :eq, low_q: 1, low_note: 35, low: -3 do
    2.times do
      sleep 7/4.0
      sample :drum_snare_soft #, amp: 0.2, lpf: 128
      sleep 2/4.0
      sample :drum_snare_soft #, amp: 0.2, lpf: 128
      sleep 7/4.0 - 0.01
    end
    #end
  end
end

define :kick do
  with_fx :level, amp: 1.4 do
    #with_fx :eq, low_q: 1, low_note: 35, low: -3 do
    tick_reset :kickTick
    4.times do
      3.times do
        sample :drum_bass_hard
        sleep (ring 2.5, 1, 0.5).tick(:kickTick)
      end
    end
    tick_reset :kickTick
    2.times do
      2.times do
        sample :drum_bass_hard
        sleep (ring 2.5, 1.5).tick(:kickTick)
      end
    end
    tick_reset :kickTick
    1.times do
      3.times do
        sample :drum_bass_hard
        sleep (ring 2.5, 1, 0.5).tick(:kickTick)
      end
    end
    7.times do
      sample :drum_bass_hard
      sleep 0.5
    end
    sample :drum_bass_hard
    sleep 0.48
  end
  
end

define :bass do
  with_fx :level, amp: 1.75 do
    with_fx  :compressor, threshold: 0.3, slope_above: 0.25, clamp_time: 0.0005,
    relax_time: 0.150, amp: 3.75 do
      with_fx :lpf, cutoff: 60 do
        with_fx :distortion, distort: 0.25 do
          tick_reset :bassTick
          tick_reset :bassZTick
          use_synth :tri
          4.times do
            3.times do
              bassNode = play (ring :B1, :D2, :Fs2).tick(:bassTick),
                release: (ring 1, 1, 1).tick(:bassReleaseTick)
              sleep (ring 2.5, 1, 0.5).tick(:bassZTick)
              control bassNode, amp: 0
            end
          end
          tick_reset :bassTick
          tick_reset :bassZTick
          2.times do
            2.times do
              bassNode = play (ring :B1, :D2).tick(:bassTick),
                release: (ring 1, 1).tick(:bassReleaseTick)
              sleep (ring 2.5, 1.5).tick(:bassZTick)
              control bassNode, amp: 0
            end
          end
          tick_reset :bassTick
          tick_reset :bassZTick
          1.times do
            3.times do
              bassNode = play (ring :B1, :D2, :Fs2).tick(:bassTick),
                release: (ring 1, 1, 1).tick(:bassReleaseTick)
              sleep (ring 2.5, 1, 0.5).tick(:bassZTick)
              control bassNode, amp: 0
            end
          end
          5.times do
            bassNode = play :B2, release: 0.5
            sleep 0.5
            control bassNode, amp: 0
          end
          tick_reset :bassTick
          tick_reset :bassZTick
          3.times do
            bassNode = play (ring :D2, :E2, :Fs2).tick(:bassTick), release: 0.5
            sleep (ring 0.5, 0.5, 0.48).tick(:bassZTick)
            control bassNode, amp: 0
          end
        end
      end
    end
    
  end
end




# Loops #########################################



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

live_loop :snare2 do
  sync :snare2
  snare2
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
  
  counter
  
  # sequencer :piano, 1, 1, 1, 17, 1
  # sequencer :piano2, 1, 1, 1, 17, 1
  # sequencer :strings, 1, 1, 1, 9, 1
  sequencer :hats, 1, 1, 1, 17, 1
  sequencer :snare, 1, 1, 1, 17, 1
  sequencer :snare2, 1, 1, 1, 17, 1
  sequencer :kick, 8, 1, 1, 17, 1
  sequencer :bass, 8, 1, 1, 17, 1
  
  sleep 1
  
  time
  
end

# ---------------- Time -----------------
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

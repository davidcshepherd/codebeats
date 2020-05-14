use_bpm  75

live_loop :melody, sync: :start do
  use_synth :dtri
  use_synth_defaults amp: 0.5
  ##### Thirteenth activity #####
  #  Create a melody and rhythm that makes sense with the song that
  #  is playing in background.
  #
  #  You can use some of the resources that we learned so far.
  #
  #  Tip: Try to find the right notes and chords hearing
  #  the original sound (Future - Mask Off)
  ##################################
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


####

# Future - Mask Off

set_mixer_control! amp: 1.5

set :bassNKickVol, 1

#use_bpm  75

resetTime

# Functions ########################################

define :flute do
  with_fx :level, amp: 0.05 do
    with_fx :reverb, room: 0.5, amp: 0.4 do
      use_synth  :dtri
      16.times do
        fluteNode = play (ring :D5, :D5, :G5, :A5, :F5, :G5, :A5, :G5, :F5, :e5,
        :d5, :e5, :d5, :c5, :a4, :d5).tick(:pianoTick), detune: 0.07,
          sustain: (ring 1 - 2.0/8, 1/8.0, 1.0/8, 1.0/4, 1/4.0, 2, 1/6.0, 1/6.0, 1/6.0,
                    1/2.0, 1/6.0, 1/6.0, 1/6.0, 1/4.0, 1/4.0, 1).tick(:fluteSustainTick), release: 1
        sleep (ring 1 - 2.0/8, 1/8.0, 1.0/8, 1.0/4, 1/4.0, 2, 1/6.0, 1/6.0, 1/6.0,
               1/2.0, 1/6.0, 1/6.0, 1/6.0, 1/4.0, 1/4.0, 2.5).tick(:fluteZTick)
        control fluteNode, amp: 0
      end
    end
  end
end

define :strings do
  with_fx :level, amp: 0.055 do
    with_fx :reverb, room: 0.4 do
      use_synth :saw
      4.times do
        stringsNode = play (ring [:F3, :A3, :D4], [:D4, :G4, :Bb4],
        [:C4, :E4, :A4], [:F3, :A3, :D4]).tick(:stringsTick),
          sustain:  (ring 1.5, 2.5, 1.5, 1.5).tick(:stringsSustainTick), release: 0.9
        sleep (ring 1.5, 2.5, 1.5, 2.48).tick(:stringsZTick)
        #control stringsNode, amp: 0
      end
    end
  end
end


define :hats do
  with_fx :level, amp: 0.4 do
    with_fx :eq, low_q: 1, low_note: 95, low: -2.5, amp: 1.1 do
      16.times do
        sample :drum_cymbal_closed, lpf: 124
        sleep 0.25
      end
    end
  end
end

define :hats2 do
  with_fx :level, amp: 0.4 do
    with_fx :eq, low_q: 1, low_note: 95, low: -2.5, amp: 1.1 do
      2.times do
        sample :drum_cymbal_closed, lpf: 124
        sleep 1/8.0
      end
      13.times do
        sample :drum_cymbal_closed, lpf: 124
        sleep 1/4.0
      end
      2.times do
        sample :drum_cymbal_closed, lpf: 124
        sleep 1/8.0
      end
      sample :drum_cymbal_closed, lpf: 124
      sleep 1/4.0
      6.times do
        sample :drum_cymbal_closed, lpf: 124
        sleep 1/12.0
      end
      4.times do
        sample :drum_cymbal_closed, lpf: 124
        sleep 1/4.0
      end
      2.times do
        sample :drum_cymbal_closed, lpf: 124
        sleep 1/8.0
      end
      3.times do
        sample :drum_cymbal_closed, lpf: 124
        sleep 1/4.0
      end
      2.times do
        sample :drum_cymbal_closed, lpf: 124
        sleep 1/8.0
      end
      4.times do
        sample :drum_cymbal_closed, lpf: 124
        sleep 1/4.0
      end
      sample :drum_cymbal_closed, lpf: 124
      sleep 1/4.0 - 0.02
    end
  end
end

define :snare do
  with_fx :level, amp: 0.6 do
    
    with_fx :eq, low_q: 1, low_note: 35, low: -3 do
      2.times do
        sleep 1
        sample :drum_snare_soft, lpf: 128
        sleep 1
      end
      1.times do
        sleep 1
        sample :drum_snare_soft, lpf: 128
        sleep 1
        sleep 1
        #sample :drum_snare_soft, lpf: 100
        sleep 0.98
      end
    end
  end
end

define :snare2 do
  with_fx :level, amp: 0.18 do
    #with_fx :pan, pan: 0.5 do
    with_fx :eq, low_q: 1, low_note: 35, low: -3 do
      sleep 3.5/2
      3.times do
        sample :drum_snare_hard, lpf: 128
        sleep (ring 1.0/2, 3.0/2, 0.5/2).tick(:snare2ZTick)
      end
      tick_reset :snare2ZTick
      sleep 3.5/2
      4.times do
        sample :drum_snare_hard, lpf: 128
        sleep (ring 1.0/2, 1.5/2, 1.5/2, 0.5/2 - 0.02).tick(:snare2ZTick)
      end
      tick_reset :snare2ZTick
    end
    #end
  end
end

define :kick do
  with_fx :level, amp: 1 do
    #with_fx :eq, low_q: 1, low_note: 35, low: -3 do
    11.times do
      sample :drum_bass_soft
      sleep (ring 1.5, 1, 1.5).tick(:kickZTick)
    end
    sample :drum_bass_soft
    sleep (ring 1.5, 1, 1.48).tick(:kickZTick)
    tick_reset :kickZTick
  end
end

define :kick2 do
  with_fx :level, amp: 1 do
    #with_fx :eq, low_q: 1, low_note: 35, low: -3 do
    9.times do
      sample :drum_bass_soft
      sleep (ring 1.5, 1, 1.5).tick(:kickZTick)
    end
    tick_reset :kickZTick
    5.times do
      sample :drum_bass_soft
      sleep (ring 1.5, 1, 1.00, 0.25, 0.23).tick(:kickZTick)
    end
    tick_reset :kickZTick
  end
end

define :bass do
  with_fx :level, amp: 1.5 do
    with_fx :lpf, cutoff: 65 do
      use_synth :tri
      6.times do
        bassNode = play (ring :D1, :D1, :D1, :A0, :D1, :D1).tick(:bassTick)
        sleep (ring 1.5, 1, 1.5, 1.5, 1, 1.48).tick(:bassZTick)
        control bassNode, amp: 0
      end
      tick_reset :bassTick
      tick_reset :bassZTick
    end
  end
end

define :bass2 do
  with_fx :level, amp: 1.5 do
    with_fx :lpf, cutoff: 65 do
      use_synth :tri
      6.times do
        bassNode = play (ring :D1, :D1, :D1, :A0, :D1, :D1).tick(:bassTick)
        sleep (ring 1.5, 1, 1.5, 1.5, 1, 1.50).tick(:bassZTick)
        control bassNode, amp: 0
      end
      tick_reset :bassTick
      tick_reset :bassZTick
      8.times do
        bassNode = play (ring :D1, :D1, :D1, :A0, :D1, :D1, :F1, :F1).tick(:bassTick)
        sleep (ring 1.5, 1, 1.5, 1.5, 1, 1.00, 0.25, 0.23).tick(:bassZTick)
        control bassNode, amp: 0
      end
      tick_reset :bassTick
      tick_reset :bassZTick
    end
  end
end





# Loops #########################################



live_loop :flute do
  sync :flute
  flute
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

live_loop :hats2 do
  sync :hats2
  hats2
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

live_loop :kick2 do
  sync :kick2
  kick2
end

live_loop :bass do
  sync :bass
  bass
end

live_loop :bass2 do
  sync :bass2
  bass2
end


#resetTime
#setBnB 21, 1

live_loop :conductor do
  
  looper 1, 17
  cue :start
  counter
  
  #sequencer :flute, 2, 1, 1, 17, 1
  sequencer :strings, 2, 1, 1, 17, 1
  sequencer :hats, 1, 1, 1, 9, 1
  sequencer :hats2, 2, 9, 1, 17, 1
  sequencer :snare, 2, 1, 1, 17, 1
  sequencer :snare2, 2, 1, 1, 17, 1
  sequencer :kick, 4, 1, 1, 9, 1
  sequencer :kick2, 4, 9, 1, 17, 1
  sequencer :bass, 2, 1, 1, 9, 1
  sequencer :bass2, 4, 9, 1, 17, 1
  
  sleep 1
  
  time
  
end

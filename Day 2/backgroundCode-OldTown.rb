# Lil Nas X - Old Town Road

run_file '.\Time.rb'

set_mixer_control! amp: 7

set :bassNKickVol, 1

resetTime

use_bpm  68


# Functions ########################################

define :bass do
  with_fx :level, amp: get[:bassNKickVol] do
    with_fx :level, amp: 0.3 do
      with_fx :level, amp: 0.75 do
        with_fx :hpf, cutoff: 3 do
          with_fx :lpf, cutoff: 50 do
            use_synth :tri
            10.times do
              play (ring :Ab1, :Ab1, :B1, :B1, :B1, :Gb1, :Gb1, :Eb1, :Gb1, :Gb1).tick(:bassTick)
              sleep (ring 1.5, 1, 0.75, 0.25, 0.5, 1.5,
                     1, 0.75, 0.5, 0.25).tick(:bassZTick)
            end
          end
        end
      end
    end
  end
end

define :kick do
  with_fx :level, amp: 1 do
    with_fx :level, amp: 0.5 do
      with_fx :level, amp: 0.70 do
        with_fx :eq, low_q: 1, low_note: 105, low: -3,
        mid_note: 40, mid_q: 2, mid: -1 do
          with_fx :hpf,  cutoff: 17.5, amp: 0.6 do
            10.times do
              sample :drum_bass_hard, amp: 2
              sleep (ring 1.5, 1, 0.75, 0.25, 0.5, 1.5,
                     1, 0.75, 0.5, 0.25).tick(:kickZTick)
            end
          end
        end
      end
    end
  end
end

define :snare do
  with_fx :level, amp: 0.7 do
    with_fx :eq, low_q: 1, low_note: 35, low: -3 do
      4.times do
        sleep 1
        sample :drum_snare_hard, amp: 0.2, lpf: 128
        sleep 1
      end
    end
  end
end

define :hats do
  with_fx :level, amp: 1 do
    with_fx :eq, low_q: 1, low_note: 95, low: -2.5 do
      32.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0
        sleep 0.25
      end
    end
  end
end

define :hatFills do
  with_fx :level, amp: 1 do
    with_fx :eq, low_q: 1, low_note: 95, low: -2.5 do
      # 1st bar
      sleep 19/12.0
      2.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0, pan: -0.5
        sleep 1/12.0
      end
      sleep 3/12.0
      sleep 25/16.0
      3.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0, pan: -0.5
        sleep 1/16.0
      end
      sleep 1/4.0
      # 2nd bar
      sleep 11/6.0
      2.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0, pan: -0.5
        sleep 1/12.0
      end
      sleep 9/32.0
      2.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0, pan: -0.5
        sleep 1/32.0
      end
      sleep 3/16.0
      2.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0, pan: -0.5
        sleep 1/32.0
      end
      sleep 95/96.0
      2.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0, pan: -0.5
        sleep 1/12.0
      end
      sleep 3/12.0
      # 3rd bar
      sleep 73/32.0
      2.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0, pan: -0.5
        sleep 1/32.0
      end
      sleep 3/16.0
      2.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0, pan: -0.5
        sleep 1/32.0
      end
      sleep 95/96.0
      2.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0, pan: -0.5
        sleep 1/12.0
      end
      #sleep 1/6.0 + 1/12.0
      sleep 5/6.0
      2.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0, pan: -0.5
        sleep 1/12.0
      end
      sleep 7/3.0
      2.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0, pan: -0.5
        sleep 1/12.0
      end
      sleep 3/4.0
    end
  end
end

define :openHat do
  1.times do
    sleep 0.5
    sample :drum_cymbal_open, amp: 0.015, release: 0.01
    sleep 3.5
  end
end

define :guitar1 do
  with_fx :level, amp: 1 do
    use_synth :pluck
    8.times do
      play (ring :C, :C, :Db, :Db, :Db, :Db, :Db, :Db).tick(:guitar1tick), amp: 0.11, pan: 0.5
      sleep 1
    end
  end
end

define :guitar2 do
  with_fx :hpf, cutoff: 45, amp: 1 do
    use_synth :pluck
    8.times do
      play (ring :Ab2, :Ab2, :B2, :B2, :Gb2, :Gb2, :E2, :E2).tick(:guitar2tick), amp: 0.075, pan: -0.25
      sleep 1
    end
  end
end

define :guitar3 do
  with_fx :level, amp: 1 do
    with_fx :hpf, cutoff: 60 do
      use_synth :pluck
      8.times do
        play :Ab3, amp: 0.08, pan: -0.8
        #play :Ab3, amp: 0.115, pan: -0.5
        sleep 1
      end
    end
  end
end

define :guitar4 do
  with_fx :level, amp: 0.0825 do
    with_fx :hpf, cutoff: 60 do
      use_synth :pluck
      4.times do
        1.times do
          sleep 0.5
          3.times do
            play (ring :Gb4, :Gb4, :Gb4).tick(:guitar4tick), pan: -0.8, release: 0.45
            sleep 0.5
          end
        end
      end
    end
  end
end

define :guitarFill do
  with_fx :level, amp: 0.0825 do
    with_fx :hpf, cutoff: 60 do
      use_synth :pluck
      sleep 6.5
      3.times do
        play (ring :Bb4, :Ab4, :Gb4).tick(:guitarFillTick), pan: 0.5, release: 0.45
        sleep (ring 1.0, 0.25, 0.25).tick(:guitarFillSleepTick)
      end
    end
  end
end



# Loops #########################################



live_loop :bass do
  sync :bass
  bass
end

live_loop :kick do
  sync :drums
  kick
end

live_loop :snare do
  sync :drums
  snare
end

live_loop :hats do
  sync :drums
  hats
end

live_loop :hatFills do
  sync :drums
  hatFills
end


live_loop :guitar1 do
  sync :guitar1n2
  guitar1
end

live_loop :guitar2 do
  sync :guitar1n2
  guitar2
end

live_loop :guitar3 do
  sync :guitar3n4
  guitar3
end

live_loop :guitar4 do
  sync :guitar3n4
  guitar4
end

live_loop :guitarFill do
  sync :guitarFillCue
  guitarFill
end

live_loop :openHat do
  sync :openHat
  openHat
end

live_loop :conductor, delay: 1.0 do
  cue :start
  counter
  
  looper 5, 29
  
  sequencer :guitar1n2, 2, 1, 1, 29, 4
  sequencer :drums, 2, 5, 1, 29, 4
  sequencer :openHat, 1, 5, 1, 29, 4
  sequencer :bass, 2, 5, 1, 29, 4
  sequencer :guitar3n4, 2, 21, 1, 27, 4
  sequencer :guitarFillCue, 2, 21, 1, 27, 4
  
  sleep 1
  
  time
  
end



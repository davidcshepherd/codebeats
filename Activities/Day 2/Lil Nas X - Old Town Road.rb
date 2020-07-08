# Lil Nas X - Old Town Road

set_mixer_control! amp: 7

use_bpm  68

live_loop :bass do
  with_fx :level do
    with_fx :level, amp: 0.3 do
      with_fx :level, amp: 0.75 do
        with_fx :hpf, cutoff: 3 do
          with_fx :lpf, cutoff: 50 do
            use_synth :tri
            play :Ab1
            sleep 1.5
            play :Ab1
            sleep 1
            play :B1
            sleep 0.75
            play :B1
            sleep 0.25
            play :B1
            sleep 0.5
            play :Gb1
            sleep 1.5
            play :Gb1
            sleep 1
            play :Eb1
            sleep 0.75
            play :Gb1
            sleep 0.5
            play :Gb1
            sleep 0.25
          end
        end
      end
    end
  end
end

live_loop :kick do
  with_fx :level, amp: 1 do
    with_fx :level, amp: 0.5 do
      with_fx :level, amp: 0.70 do
        with_fx :eq, low_q: 1, low_note: 105, low: -3,
        mid_note: 40, mid_q: 2, mid: -1 do
          with_fx :hpf,  cutoff: 17.5, amp: 0.6 do
            sample :drum_bass_hard, amp: 2
            sleep 1.5
            sample :drum_bass_hard, amp: 2
            sleep 1
            sample :drum_bass_hard, amp: 2
            sleep 0.75
            sample :drum_bass_hard, amp: 2
            sleep 0.25
            sample :drum_bass_hard, amp: 2
            sleep 0.5
            sample :drum_bass_hard, amp: 2
            sleep 1.5
            sample :drum_bass_hard, amp: 2
            sleep 1
            sample :drum_bass_hard, amp: 2
            sleep 0.75
            sample :drum_bass_hard, amp: 2
            sleep 0.5
            sample :drum_bass_hard, amp: 2
            sleep 0.25
          end
        end
      end
    end
  end
end

live_loop :snare do
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

live_loop :hats do
  with_fx :level, amp: 1 do
    with_fx :eq, low_q: 1, low_note: 95, low: -2.5 do
      32.times do
        sample :drum_cymbal_closed, amp: 0.1, lpf: 124, hpf: 0
        sleep 0.25
      end
    end
  end
end

live_loop :hatFills do
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

live_loop :openHat do
  1.times do
    sleep 0.5
    sample :drum_cymbal_open, amp: 0.015, release: 0.01
    sleep 3.5
  end
end

live_loop :guitar1 do
  with_fx :level, amp: 1 do
    use_synth :pluck
    play :C, amp: 0.11, pan: 0.5
    sleep 1
    play :C, amp: 0.11, pan: 0.5
    sleep 1
    play :Db, amp: 0.11, pan: 0.5
    sleep 1
    play :Db, amp: 0.11, pan: 0.5
    sleep 1
    play :Db, amp: 0.11, pan: 0.5
    sleep 1
    play :Db, amp: 0.11, pan: 0.5
    sleep 1
    play :Db, amp: 0.11, pan: 0.5
    sleep 1
    play :Db, amp: 0.11, pan: 0.5
    sleep 1
  end
end

live_loop :guitar2 do
  with_fx :hpf, cutoff: 45, amp: 1 do
    use_synth :pluck
    play :Ab2, amp: 0.075, pan: -0.25
    sleep 1
    play :Ab2, amp: 0.075, pan: -0.25
    sleep 1
    play :B2, amp: 0.075, pan: -0.25
    sleep 1
    play :B2, amp: 0.075, pan: -0.25
    sleep 1
    play :Gb2, amp: 0.075, pan: -0.25
    sleep 1
    play :Gb2, amp: 0.075, pan: -0.25
    sleep 1
    play :E2, amp: 0.075, pan: -0.25
    sleep 1
    play :E2, amp: 0.075, pan: -0.25
    sleep 1
  end
end

comment do
  
  live_loop :guitar3 do
    with_fx :level, amp: 1 do
      with_fx :hpf, cutoff: 60 do
        use_synth :pluck
        8.times do
          play :Ab3, amp: 0.08, pan: -0.8
          sleep 1
        end
      end
    end
  end
  
  live_loop :guitar4 do
    with_fx :level, amp: 0.0825 do
      with_fx :hpf, cutoff: 60 do
        use_synth :pluck
        4.times do
          sleep 0.5
          play :Gb4
          sleep 0.5
          play :Gb4
          sleep 0.5
          play :Gb4
          sleep 0.5
        end
      end
    end
  end
  
  live_loop :guitarFill do
    with_fx :level, amp: 0.09 do
      with_fx :hpf, cutoff: 60 do
        use_synth :pluck
        sleep 6.5
        play :Bb4, pan: 0.5, release: 0.45
        sleep 1.0
        play :Ab4, pan: 0.5, release: 0.45
        sleep 0.25
        play :Gb4, pan: 0.5, release: 0.45
        sleep 0.25
      end
    end
  end
  
end # end comment




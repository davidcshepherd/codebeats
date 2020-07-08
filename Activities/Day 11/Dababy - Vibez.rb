# DaBaby - Vibez

set_mixer_control! amp: 1

set :bassNKickVol, 1

use_bpm  77

live_loop :piano do
  with_fx :level, amp: 0.54 do
    use_synth :piano
    sleep 0.5
    play :Eb5
    sleep 0.5
    play :Ab4
    sleep 0.5
    play :A4
    sleep 0.5
    play :Gb4
    sleep 0.5
    play :Db3
    sleep 0.5
    play :Eb3
    sleep 0.5
    play :E3
    sleep 0.5    
  end
end

live_loop :piano2 do
  with_fx :level, amp: 0.54 do
    use_synth :piano
    sleep 0.5 - 0.03125
    play :Ab2
    sleep 1.03125
    play :Gb2
    sleep 0.5
    play :A2
    sleep 2
  end
end

live_loop :strings do
  with_fx :level, amp: 0.4 do
    use_synth :chiplead
    use_synth_defaults sustain: 1, release: 0
    8.times do
      play [:Db4, :E4, :Ab4, :Db5]
      sleep 1.5
      play [:Gb4, :A4, :Eb5]
      sleep 2.5
    end
    sleep 32
  end
end


live_loop :hats do
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

live_loop :snare do
  with_fx :level, amp: 0.7 do    
    1.times do
      sleep 1
      sample :drum_snare_hard
      sleep 1.25
      sample :drum_snare_hard
      sleep 0.75
      sample :drum_snare_hard
      sleep 1
    end
  end
end

live_loop :kick do
  with_fx :level, amp: 1.1 do
    1.times do
      sample :drum_bass_hard
      sleep 4
    end
  end
end

live_loop :bass do
  with_fx :level, amp: 1.38 do
    use_synth :tri
    play :Db1, release: 1
    sleep 2.5
    play :Eb2, release: 0.5
    sleep 0.5
    play :E2, release: 0.5
    sleep 0.5
    play :E2, release: 0.5
    sleep 0.5
  end
end

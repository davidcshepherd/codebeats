# K Camp - Renegade

set_mixer_control! amp: 1

use_bpm 74

live_loop :hats do
  with_fx :level, amp: 0.9 do
    16.times do
      sample :drum_cymbal_closed
      sleep 0.25
    end
  end
end

live_loop :snare do
  with_fx :level, amp: 0.85 do
    2.times do
      sleep 1
      sample :drum_snare_hard
      sleep 1
    end
  end
end

live_loop :snare2 do
  with_fx :level, amp: 0.85 do
    2.times do
      sleep 7/4.0
      sample :drum_snare_soft
      sleep 2/4.0
      sample :drum_snare_soft
      sleep 7/4.0
    end
  end
end

live_loop :kick do
  with_fx :level, amp: 1.4 do
    4.times do
      sample :drum_bass_hard
      sleep 2.5
      sample :drum_bass_hard
      sleep 1
      sample :drum_bass_hard
      sleep 0.5
    end
    2.times do
      sample :drum_bass_hard
      sleep 2.5
      sample :drum_bass_hard
      sleep 1.5
    end
    sample :drum_bass_hard
    sleep 2.5
    sample :drum_bass_hard
    sleep 1
    sample :drum_bass_hard
    sleep 0.5
    7.times do
      sample :drum_bass_hard
      sleep 0.5
    end
    sample :drum_bass_hard
    sleep 0.5
  end
  
end

live_loop :bass do
  with_fx :level, amp: 1.75 do
    with_fx  :compressor, threshold: 0.3, slope_above: 0.25, clamp_time: 0.0005,
    relax_time: 0.150, amp: 3.75 do
      with_fx :lpf, cutoff: 60 do
        with_fx :distortion, distort: 0.25 do
          use_synth :tri
          4.times do
            play :B1
            sleep 2.5
            play :D2
            sleep 1
            play :Fs2, release: 0.5
            sleep 0.5
          end
          2.times do
            play :B1
            sleep 2.5
            play :D2
            sleep 1.5
          end
          play :B1
          sleep 2.5
          play :D2
          sleep 1
          play :Fs2, release: 0.5
          sleep 0.5
          play :B2, release: 0.5
          sleep 0.5
          play :B2, release: 0.5
          sleep 0.5
          play :B2, release: 0.5
          sleep 0.5
          play :B2, release: 0.5
          sleep 0.5
          play :B2, release: 0.5
          sleep 0.5
          play :D2, release: 0.5
          sleep 0.5
          play :E2, release: 0.5
          sleep 0.5
          play :Fs2, release: 0.5
          sleep 0.5
        end
      end
    end
  end
end


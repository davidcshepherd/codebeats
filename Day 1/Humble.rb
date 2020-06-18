# Kendrick Lamar - Humble

set_mixer_control! amp: 1

use_bpm  75

live_loop :piano do
  with_fx :level, amp: 0.8 do
    use_synth :piano
    play :Eb3
    sleep 0.5
    play :Eb3
    sleep 1
    play :E3
    sleep 0.5
    play :Eb3
    sleep 0.5
    play :Ab2
    sleep 0.25
    play  :Ab2
    sleep 0.5
    play :Ab2
    sleep 0.25
    play :E3
    sleep 0.5
  end
end

live_loop :hiHat do
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

live_loop :openHat do
  sleep 0.5
  openHatNode = sample :drum_cymbal_open, amp: 0.34
  sleep 0.5
  control openHatNode, amp: 0
  sleep 3
end

live_loop :snare do
  with_fx :level, amp: 1 do
    2.times do
      sleep 1
      sample :drum_snare_hard
      sleep 1
    end
  end
end

live_loop :kick do
  with_fx :level, amp: 1 do
    sample :drum_bass_hard
    sleep 1.75
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.75
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 1.5
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.25
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_hard
    sleep 0.5
  end
end

live_loop :bass do
  with_fx :level, amp: 1.25 do
    use_synth :tri
    bassNode = play :Eb1
    sleep 0.25
    control bassNode, amp: 0
    bassNode = play :Eb1
    sleep  1.5
    control bassNode, amp: 0
    bassNode = play :Gb1
    sleep 0.5
    control bassNode, amp: 0
    bassNode = play :Gb1
    sleep 0.5
    control bassNode, amp: 0
    bassNode = play :Gb1
    sleep 0.25
    control bassNode, amp: 0
    bassNode = play :Db1
    sleep 0.5
    control bassNode, amp: 0
    bassNode = play :Db1
    sleep 0.5
    control bassNode, amp: 0
  end
end
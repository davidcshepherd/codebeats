use_bpm 93

define :playNote do |theScale,indexOfScale|
  #play theScale[indexOfScale-1], amp: 0.25, release: 0.5, sustain: 1.5
  play theScale[indexOfScale-1], amp: 0.75, release: 0.5, sustain: 1.5
  sleep 2
end

live_loop :chords, sync: :start do
  use_synth :piano
  8.times do
    flam (chord_invert  (chord :A4, :minor), 1)
    sleep 0.38
  end
  3.times do
    flam (chord_invert (chord :E4, :sus4), 2)
    sleep 0.38
  end
  5.times do
    flam (chord_invert  (chord :E4, :minor), 2)
    sleep 0.38
  end
end

define :flam do |myChord|
  play myChord[0], amp: 0.24 #, amp: 0.08
  sleep 0.04
  play myChord[1], amp: 0.24 #, amp: 0.08
  sleep 0.04
  play myChord[2], amp: 0.24 #, amp: 0.08
  sleep 0.04
end

live_loop :pulse, sync: :start do
  use_synth :piano
  play scale(:E1, :minor)[4-1], sustain: 1, amp: 1#, amp: 0.5
  sleep 3
  play scale(:E1, :minor)[5-1], sustain: 0.1, amp: 1#, amp: 0.5
  sleep 1
  play scale(:E1, :minor)[1-1], sustain: 1, amp: 1#, amp: 0.5
  play scale(:E2, :minor)[1-1], sustain: 1, amp: 1#, amp: 0.5
  sleep 3
  play scale(:E1, :minor)[1-1], sustain: 0.1, amp: 0.75#, amp: 0.25
  play scale(:E2, :minor)[1-1], sustain: 0.1, amp: 0.75#, amp: 0.25
  sleep 1
end

live_loop :ClosedHat, sync: :start do
  16.times do
    sample :drum_cymbal_closed, amp: 1#, amp: 0.35
    sleep 0.5
  end
end

live_loop :OpenHat, sync: :start do
  4.times do
    sleep 0.5
    #sample :drum_cymbal_open, amp: 0.1, sustain: 0.334, rate: 1.1
    sample :drum_cymbal_open, amp: 0.3, sustain: 0.334, rate: 1.1
    sleep 1.5
  end
end

live_loop :KickAndSnare, sync: :start do
  2.times do
    sample :drum_heavy_kick, amp: 1#, amp: 0.95
    sleep 1
    sample :drum_snare_soft, amp: 1#, amp: 0.95
    sleep 0.25
    sample :drum_heavy_kick, amp: 1#, amp: 0.95
    sleep 0.75
    sample :drum_heavy_kick, amp: 1#, amp: 0.95
    sleep 1
    sample :drum_snare_soft, amp: 1#, amp: 0.95
    sleep 1
  end
end

live_loop :conductor, delay: 1.0 do
  cue :start
  sleep 8
end


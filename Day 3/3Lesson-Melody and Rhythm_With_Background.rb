use_bpm 93

live_loop :melody, sync: :start do
  use_synth :tech_saws
  use_synth_defaults amp: 0.8
  ##### Third activity - First measure #####
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
  ##################################
  # Example:
  # play :A6, release: 1
  # sleep 1
  
  sleep 4 # remove this "sleep" and write your code here!
  
  
  ##### Third activity - Second measure #####
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
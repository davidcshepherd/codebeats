use_bpm 93

set :rfpath, "C:/Users/krugdl/Documents/GitHub/2019-CS305-VCUEng-Coding-with-Beats/Week Long Course/Day 1/Sonic Pi Files/"

run_file get(:rfpath)+"backgroundCode.rb"

live_loop :melody, sync: :start do
  use_synth :tech_saws
  use_synth_defaults amp: 0.6
  ##### Third activity - First measure #####
  #  Create a melody and rhythm that makes sense with the song that 
  #  is playing in background.
  #
  #  Use the play command followed by : and the note, for example:
  #    play :A6
  #
  #  With the play command you can use some specific instructions
  #  to change the rhythm:
  #    amp - defines the amplitude (loudness) of a sound
  #    release - defines the time that the sound take to fade out
  #
  #  Example using the instructions:
  #    play :A6, amp: 0.8, release: 0.5
  #
  #  After the play (in following row), use the sleep command
  #  expressing the period of time that you want to play the
  #  note placed at the "play" above, for example:
  #    sleep 1
  #
  #  It means that the note will play for 1 beat.
  #
  #  To do a better song (with the background song), at the first
  #  measure (4 beats), you can play the following notes, in ANY rhythm:
  #    A6, B6, C7, D7, E7, F#7, G7, A7
  #     - to use note F#7 in Sonic-Pi - use Fs7
  #
  #  You should emphasize (play more time) these notes:
  #    A6, C7, E7
  #
  #  Tip: the sleeps must add up to 4.0 in total.
  #   - it means the all sleeps toghether have to add up 4 in total
  ##################################
  # Example:
  # play :A6, amp: 1, release: 1
  # sleep 1
  
  sleep 4
  
  
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
  # play :E6, amp: 1, release: 1
  # sleep 1
  
  sleep 4
  
  ##################################
end
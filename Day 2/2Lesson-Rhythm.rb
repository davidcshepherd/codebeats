use_bpm 93

set :rfpath, "C:/Users/krugdl/Documents/GitHub/2019-CS305-VCUEng-Coding-with-Beats/Week Long Course/Day 1/Sonic Pi Files/"

run_file get(:rfpath)+"backgroundCode.rb"

live_loop :melody, sync: :start do
  use_synth :tech_saws
  use_synth_defaults amp: 0.6
  ##### Second activity - First measure #####
  #  Create a rhythm that makes sense with the song that is playing
  #  in background.
  #
  #  With the play command you can use some specific instructions
  #  to change the rhythm:
  #    amp - defines the amplitude (loudness) of a sound
  #    release - defines the time that the sound take to fade out
  #
  #  Example using the instructions:
  #    play :A6, amp: 0.8, release: 0.5
  #
  #  To do a better song (with the background song), at the first
  #  measure (4 beats), it is recommended to play the following
  #  note, in ANY rhythm:
  #    A6
  #
  #  Tip: the sleeps must add up to 4.0 in total.
  #  Tip: if the note is too long make the sustain shorter than 1.
  ##################################
  # Example:
  # play :A6, amp: 1, release: 1
  # sleep 1
  
  sleep 4
  
  ##### Second activity - Second measure #####
  #  To do a better song (with the background song), at the first
  #  measure (4 beats), it is recommended to play the following
  #  note, in ANY rhythm:
  #    E6
  #
  #  Tip: the sleeps must add up to 4.0 in total.
  #  Tip: if the note is too long make the sustain shorter than 1.
  ##################################
  # Example:
  # play :E6, amp: 1, release: 1
  # sleep 1
  
  sleep 4
  
  ##################################
end
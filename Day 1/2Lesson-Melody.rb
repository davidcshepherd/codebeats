use_bpm 93

set :rfpath, "SET FILE PATH HERE!"

run_file get(:rfpath)+"/Humble.rb"

live_loop :melody, sync: :start do
  use_synth :tech_saws
  use_synth_defaults amp: 0.6
  ##### First activity - First measure #####
  #  Create a melody that makes sense with the song that is playing
  #  in background.
  #
  #  Use the play command followed by : and the note, for example:
  #    play :Ef5
  #
  #  After the play (in following row), use the sleep command
  #  expressing the period of time that you want to play the
  #  note placed at the "play" above, for example:
  #    sleep 1
  #
  #  It means that the note will play for 1 beat.
  #
  #  To match the background music, you can play the following notes:
  #    Eb5, Fb5, Gb5, Ab5, Bb5, Cb6, Db7
  #
  #  You should emphasize these notes:
  #    Eb5, Gb5, Bb5
  #
  #  Tip: the sleeps must add up to 4.0 in total.
  #  Tip: Fb5 is a FUNKY note!
  ##################################
  # Example:
  # play :Ab6
  # sleep 1  
  sleep 4    
  ##################################
end
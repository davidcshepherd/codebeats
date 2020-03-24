use_bpm 68

set :rfpath, "SET TO FOLDER WHERE CODE IS!!!!!!!"

run_file get(:rfpath)+"backgroundCode-OldTown.rb"

live_loop :melody, sync: :start do
  use_synth :blade
  use_synth_defaults amp: 0.1
  ##### Second activity - First Chord #####
  #  Create a rhythm that makes sense with the song that is playing
  #  in background.
  #
  #  With the play command you can use some specific instructions
  #  to change the rhythm:
  #    release - defines the time that the sound takes to fade out
  #
  #  Example using the instructions:
  #    play :Gs6, release: 0.5
  #
  #  For the first two beats, play the following note, in ANY rhythm:
  #    Gs6
  #
  #  Tip: the sleeps must add up to 2.0 in total.
  #  Tip: if the note is too long make the sustain shorter than 1.
  ##################################
  # Example:
  # sleep 0.25
  # play :Gs6, release: 0.1
  
  sleep 2
  
  ##### Second activity - Second Chord #####
  #  Play the following note, in ANY rhythm:
  #    B6
  #
  #  Tip: the sleeps must add up to 2.0 in total.
  #  Tip: if the note is too long make the sustain shorter than 1.
  ##################################
  # Example:
  # play :E6, release: 1
  # sleep 1
  
  sleep 2
  
  ##################################
  
  ##### Second activity - Third Chord #####
  #  Play the following note, in ANY rhythm:
  #    Fs6
  #
  #  Tip: the sleeps must add up to 2.0 in total.
  #  Tip: if the note is too long make the sustain shorter than 1.
  ##################################
  # Example:
  # play :Fs6, release: 1
  # sleep 1
  
  sleep 2
  
  ##################################
  
  ##### Second activity - Second Chord #####
  #  Play the following note, in ANY rhythm:
  #    B6
  #
  #  Tip: the sleeps must add up to 2.0 in total.
  #  Tip: if the note is too long make the sustain shorter than 1.
  ##################################
  # Example:
  # play :E6, release: 1
  # sleep 1
  
  sleep 2
  
  ##################################
end
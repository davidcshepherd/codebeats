# Set the bpm as you wish
use_bpm 120

##### Tenth activity #####
#  Add a break part in your song. Control the amount of sleeps
#  in your live_loops to stop the song and start the break
#  don't forget to resume the other live_loops when the break finish.
#
#  Use the structure of live_loops to create your song
#  create your drums part, your chords part and your melody
#  don't forget to care of the amount of sleeps in each live_loop.
#  It would be nice to have the same amount or,
#  at least, a value that is multiple of 4 (beats).
#
#  The main challenge is to continue modifying your song
#  without press "stop" and "run" again, just press
#  "run" after your changes to check how it is!
#
#  Tip: Try one live_loop at each time!
#  Tip: upload to https://forms.gle/ThAM3PWDg3oQZmuJ9 when done!
##########################

live_loop :break do
  use_sample_defaults amp: 1
  use_synth_defaults amp: 1
  # Break's live_loop: insert your code here:
  sleep 4
end

live_loop :drums do
  use_sample_defaults amp: 1
  use_synth_defaults amp: 1
  # Drum's live_loop: insert your code here:
  sleep 4
end

live_loop :chords do
  use_sample_defaults amp: 1
  use_synth_defaults amp: 1
  # Chord's live_loop: insert your code here:
  sleep 4
end

live_loop :melody do
  use_sample_defaults amp: 1
  use_synth_defaults amp: 1
  # Melody's live_loop: insert your code here:
  sleep 4
end
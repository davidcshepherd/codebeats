use_bpm 120
live_loop :melody do
  use_synth :piano
  play :C4
  sleep 1
  play :D4
  sleep 1
  #play :B5 # use for the first example - bad melody
  #play :E4 # use for the second and third example - stepwise melody and short leap
  play :C5 # use for the fourth example - large leaps
  sleep 1
  #play :F4 # use for the first and second example, comment for the third
  #play :G4 # use for the third example - short leap
  play :A4 # use for the fourth example - large leaps
  sleep 1
  
  play :G4
  sleep 1
  play :F4
  sleep 1
  play :E4
  sleep 1
  play :D4
  sleep 2
end


# Conditionals Activity
#
# Use variables and conditionals to create a song
# that change the pattern during the execution.
#
# You can use one or more live_loop and one or more
# conditionals and variables.
#
# Here is only the example that was showed during
# the Coding with Doug section, you can change it!

# Creates the variable control with value equal to 0
control = 0

live_loop :conditionals do
  if control == 0
    # If the value of variable control is equal to 0
    # the commands below will be executed - till else
    sample :drum_cowbell
    sleep 1
    play :e4
    control = 1 # Change the variable's control's value
  else
    # If the value of variable control is different than 0
    # the commands below will be executed - till end
    sample :misc_crow
    sleep 1
    play :g4
    control = 0 # Change the variable's control's value
  end
  sleep 1
end
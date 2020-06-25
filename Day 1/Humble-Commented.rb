# Kendrick Lamar - Humble

set_mixer_control! amp: 1

use_bpm  75 #This tells the program at what speed to play the music. BPM stands for beats per minute.
#So if you have 60 bpm, you'll have one beat every second. 75 bpm means 75 beats every minute, or about 1.25 beats per second.

#Are we keeping this part?
##### First activity - First measure #####
#  Create a melody that makes sense with the song that is playing
#  in background.
#
#  Use the play command followed by : and the note, for example:
#    play :Eb5
#
#  After the play (in following row), use the sleep command
#  expressing the period of time that you want to play the
#  note placed at the "play" above, for example:
#    sleep 1
#
#  It means that the note will play for 1 beat.
#
#  To match the background music, you can play the following notes:
#    Ab4, Bb4, Cb5, Db5, Eb5, Fb5, Gb5
#
#  You should emphasize these notes:
#    Ab4, Cb5, Eb5
#
#  Tip: the sleeps must add up to 4.0 in total.
#  Tip: Fb5 is a FUNKY note!
##################################
# Example:
# play :eb5
# sleep 1
# play :eb5
# sleep 1
# play :eb5
# sleep 1
# play :eb5
# sleep 1
##################################


live_loop :melody do #This starts a "loop" of code that will repeat as long as the program is running. We have named this loop "melody"
  #You can change the name to whatever you want, but it's a good idea to name the loops something that makes sense to you.
  use_synth :tech_saws #This tells the loop what sound it will make. In this case, tech_saws, which is a sort of buzzy sounding piano effect.
  use_synth_defaults amp: 0.6 #Here we change the "amp" of the loop. amp stands for amplitude, and it controls the volume of the sound.
  sleep 4 #Sleep tells the loop to rest, not play anything, for an amount of beats, in this case, 4 beats.
  #If you have another sound after the sleep, it would play 4 beats after the first sound.
  
end #"end" tells the code when to close a loop, if we didn't have it, everything else in the code would only run 4 times.

live_loop :piano do #Here, we start a new loop called "piano"
  with_fx :level, amp: 0.8 do #This tells the loop the amp
    use_synth :piano #This tells the loop to use the piano sound
    play :Eb3 #This tells the loop to play note Eb3. In musical terms, it would be called E flat 3, or E flat in the 3rd octive.
    #(more on this later).
    sleep 0.5 #Rest half a beat
    play :Eb3 #Play E flat 3
    sleep 1 #Rest one beat
    play :E3 #Play E flat 3
    sleep 0.5 #Rest half a beat
    play :Eb3 #Play E flat 3
    sleep 0.5 #Rest half a beat
    play :Ab2 #Play A flat 2
    sleep 0.25 #Rest a quater of a beat
    play  :Ab2 #Play A flat 2
    sleep 0.5 #Rest half a beat
    play :Ab2 #Play A flat 2
    sleep 0.25 #Rest a quater of a beat
    play :E3 #Play E flat 3
    sleep 0.5 #Rest half a beat
  end #End the "with_fx :level, amp: 0.8 do" line. This way, we can change the amp later on
end #End the piano loop

### What does Eb3 actually mean?
#In music, we have a things called octives, scales, and notes. (And other fun stuff, but we'll learn about that later.)

#A scale is a set of 8 notes, played in order. For example, do, re, mi, fa, so, la, ti, do (This is called Solfege, but we can also
# refer to the names of the notes. For example, in the scale of C, the order is C, D, E, F, G, A, B, and C.

#An octive tells us where the scale is located. You may have noticed that in both examples of scales, the first and last notes are the same.
#This is because they are the same note, but in different octaves. This means it has the same pitch, but a different frequency.
#Pitch and Frequency may be too complicated for the kids, will consider removing.
#The number after the note in our code (The 3 in Eb3) tells the program what octave to play in.
#The middle note on a piano, called middle C, is also known as C4.

#Finally, we can talk about notes. More specifically, what is in between notes. As you may have guessed, the E in Eb3 tells the code to play the note E
#But what does the b mean? It turns out that there are musical sounds in between each note on a scale.
#When you go from E to D in a scale, we say you are going down a whole step. However, if you only go halfway between E and D, you go down a half step.
#When you go down a half step, the note becomes "flat" (E-0.5=E flat). When you go up a half step, the note becomes sharp (D+0.5=D sharp).
#D sharp and E flat are actually the exact same sound, but we refer to them by different notes, but the notes we are allowed to play is determined by the "key" or scale.
#Howeverm you don't have to worry about the key right now.

#In Sonic Pi, when we want to play a flat note, we put "b" (has to be lowercase) after the note (Eb).
#When we want to play a sharp note, we put "s" (has to be lowercase) after the note (Ds).
#The reason we use "s" for sharp is because sharp starts with "s".
#However, we use "b" for flat because on a written sheet of music, the symbol for flat looks like a lowercase b.


live_loop :hiHat do #Start a new loop for hiHat
  with_fx :level, amp: 1 do #Use an amp level of 1
    4.times do #Do the following code 4 times (this is another loop, but it will only run the number of times you tell it.)
      sample :drum_cymbal_closed #Use the sound of a closed cymbal
      sleep 0.5 #Rest for half a beat
    end #End the 4 times loop
    2.times do #Do the following twice
      sample :drum_cymbal_closed #Use the closed cymbol sound
      sleep 0.125 #Rest for one eighth of a beat.
    end #End the 3 times loop
    sleep 0.25 #Rest for a quarter of a beat
    6.times do #Do the following 6 times
      sample :drum_cymbal_closed #Use the closed cymbol sound
      sleep 0.25 #Rest for a quarter of a beat
    end #End the six times loop
  end #End the amp control
end #End the hiHat loop

live_loop :openHat do #Start a new loop for openHat
  sleep 0.5 #Rest for a quarter of a beat
  openHatNode = sample :drum_cymbal_open, amp: 0.34 #Use the open cymbol sound and an amp of 0.34
  sleep 0.5 #Rest for half a beat
  control openHatNode, amp: 0 #Make the open cymbol sound completly quite. This will stop the sound from continuing on.
  sleep 3 #Rest for 3 beats
end

live_loop :snare do #Start a new loop named snare
  with_fx :level, amp: 1 do #Use an amp level of 1
    2.times do #Do the following twice
      sleep 1 #Rest for 1 beat
      sample :drum_snare_hard #Play the hard snare sound
      sleep 1 #Rest for 1 beat
    end #End the 2 times loop
  end #End the amp control
end #End the snare loop

live_loop :kick do #Start a new loop named kick
  with_fx :level, amp: 1 do #Use an amp level of 1
    sample :drum_bass_hard #Play the hard bass sound
    sleep 1.75 #Rest for 1.75 beats.
    sample :drum_bass_hard #Play the hard bass sound
    sleep 0.5 #Rest for half a beat
    sample :drum_bass_hard #Play the hard bass sound
    sleep 0.5 #Rest for half a beat
    sample :drum_bass_hard #Play the hard bass sound
    sleep 0.75 #Rest for three quarters of a beat
    sample :drum_bass_hard #Play the hard bass sound
    sleep 0.5 #Rest for half a beat
    sample :drum_bass_hard #Play the hard bass sound
    sleep 0.25 #Rest for a quarter of a beat
    sample :drum_bass_hard #Play the hard bass sound
    sleep 1.5 #Rest for 1 and a half beats
    sample :drum_bass_hard #Play the hard bass sound
    sleep 0.5 #Rest for half a beat
    sample :drum_bass_hard #Play the hard bass sound
    sleep 0.5 #Rest for half a beat
    sample :drum_bass_hard #Play the hard bass sound
    sleep 0.25 #Rest for a quarter of a beat
    sample :drum_bass_hard #Play the hard bass sound
    sleep 0.5 #Rest for half a beat
    sample :drum_bass_hard #Play the hard bass sound
    sleep 0.5 #Rest for half a beat
  end #End the amp control
end #End the kick loop

live_loop :bass do #Start a new loop named bass
  with_fx :level, amp: 1.25 do #Use an amp level of 1.25
    use_synth :tri #Use the synth sound "tri"
    bassNode = play :Eb1 #Play E flat, first octave
    sleep 0.25 #Rest for a quarter of a beat
    control bassNode, amp: 0 #Set the amp to 0 to silce the sound
    bassNode = play :Eb1 #Play E flat, first octave
    sleep  1.5 #Rest for one and a half beats
    control bassNode, amp: 0 #Set the amp to 0 to silce the sound
    bassNode = play :Gb1 #Play G flat, first octave
    sleep 0.5 #Rest for half a beat 
    control bassNode, amp: 0 #Set the amp to 0 to silce the sound
    bassNode = play :Gb1 #Play G flat, first octave
    sleep 0.5 #Rest for half a beat
    control bassNode, amp: 0 #Set the amp to 0 to silce the sound
    bassNode = play :Gb1 #Play G flat, first octave 
    sleep 0.25 #Rest for a quarter of a beat
    control bassNode, amp: 0 #Set the amp to 0 to silce the sound
    bassNode = play :Db1 #Play D flat, first octave
    sleep 0.5 #Rest for half a beat
    control bassNode, amp: 0 #Set the amp to 0 to silce the sound
    bassNode = play :Db1 #Play D flat, first octave
    sleep 0.5 #Rest for half a beat
    control bassNode, amp: 0 #Set the amp to 0 to silce the sound
  end #End the amp control
end #End the bass loop
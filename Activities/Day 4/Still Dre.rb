# Still Dre

use_bpm 93
with_fx :sound_out_stereo, amp: 1.5 do
  
  ####################################################################
  #
  # Functions:
  #
  ####################################################################
  
  define :melody do
    use_synth :chiplead
    1.times do
      play :C5, amp: 0.125, release: 0.34
      sleep 0.25
      play :B4, amp: 0.125, release: 0.34
      sleep 0.25
      play :C5, amp: 0.125, release: 0.34
      sleep 0.25
      play :D5, amp: 0.125, release: 0.34
      sleep 0.25
      play :E5, amp: 0.125, release: 0.34
      sleep 0.25
      play :C5, amp: 0.125, release: 0.34
      sleep 0.25
      play :B4, amp: 0.125, release: 0.34
    end
  end
  
  define :melody2 do
    use_synth :chiplead
    play :C5, amp: 0.125, release: 0.34
    sleep 0.25
    play :B4, amp: 0.125, release: 0.34
    sleep 0.25
    play :C5, amp: 0.125, release: 0.34
    sleep 0.25
    play :D5, amp: 0.125, release: 0.34
    sleep 0.25
    play :E5, amp: 0.125, release: 0.34
    sleep 0.25
    play :B4, amp: 0.125, release: 0.34
  end
  
  # little melody at end of song
  define :melody3 do
    use_synth :chiplead
    sleep 2
    play :B4, amp: 0.1
    sleep 1
    play :A4, amp: 0.1
    sleep 3
    play :E4, amp: 0.1
    sleep 1
    play :G4, amp: 0.1
    sleep 1
  end
  
  
  define :pianoHarmony do
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
    play myChord[0], amp: 0.08
    sleep 0.04
    play myChord[1], amp: 0.08
    sleep 0.04
    play myChord[2], amp: 0.08
    sleep 0.04
  end
  
  define :drums do
    live_loop :ClosedHat do
      sample :drum_cymbal_closed, amp: 0.25
      sleep 0.5
    end
    
    live_loop :OpenHat do
      sleep 0.5
      sample :drum_cymbal_open, amp: 0.1, sustain: 0.334, rate: 1.1
      sleep 1.5
    end
    
    live_loop :KickAndSnare do
      sample :drum_heavy_kick
      sleep 1
      sample :drum_snare_soft, amp: 0.75
      sleep 0.25
      sample :drum_heavy_kick
      sleep 0.58333333333333333333333333333333333
      sample :drum_heavy_kick, amp: 0.25, attack_level: 0.5
      sleep 1/6.0
      sample :drum_heavy_kick
      sleep 1
      sample :drum_snare_soft, amp: 0.75
      sleep 1
    end
  end
  
  define :bassLayeredChords do
    use_synth :saw
    play :C6, amp: 0.0334
    play :A4, amp: 0.0334
    sleep 3
    play :C6, amp: 0.0334
    play :A4, amp: 0.0334
    sleep 1
    play :B5, amp: 0.0334
    play :G4, amp: 0.0334
    sleep 3
    play :B5, amp: 0.0334
    play :G4, amp: 0.0334
    sleep 1
    play :C6, amp: 0.0334
    play :A4, amp: 0.0334
    sleep 3
    play :C6, amp: 0.0334
    play :A4, amp: 0.0334
    sleep 1
    play :B5, amp: 0.0334
    play :G4, amp: 0.0334
    sleep 4
  end
  
  # Has pickup notes at the end for repeating
  define :bassLayeredChords2 do
    use_synth :saw
    play :C6, amp: 0.0334
    play :A4, amp: 0.0334
    sleep 3
    play :C6, amp: 0.0334
    play :A4, amp: 0.0334
    sleep 1
    play :B5, amp: 0.0334
    play :G4, amp: 0.0334
    sleep 3
    play :B5, amp: 0.0334
    play :G4, amp: 0.0334
    sleep 1
  end
  
  define :bass do
    use_synth :sine
    1.times do
      play :A2, amp: 0.5
      sleep 3
      play :B2, amp: 0.5
      sleep 1
      play :E2, amp: 0.5
      sleep 3
      play :E2, amp: 0.5
      sleep 1
    end
    1.times do
      play :A2, amp: 0.5
      sleep 3
      play :B2, amp: 0.5
      sleep 1
      play :E2, amp: 0.5
      sleep 3
      play :A2, amp: 0.5
      sleep 0.5
      play :E2, amp: 0.5
      sleep 0.5
    end
  end
  
  # Intro closed hat
  in_thread do
    sleep 15.5
    sample :drum_cymbal_closed, amp: 0.25
  end
  
  # Intro open hat
  in_thread do
    sleep 14.5
    sample :drum_cymbal_open, amp: 0.1, sustain: 0.334, rate: 1.1
    sleep 1.5
  end
  
  # Intro snare
  in_thread do
    sleep 15
    sample :drum_snare_soft, amp: 0.75
  end
  
  # 8th note Piano harmony
  in_thread do
    live_loop :Harmony do
      use_synth :piano
      pianoHarmony
    end
  end
  
  # Drums
  in_thread do
    sleep 16
    drums
  end
  
  # Bass layered chords
  in_thread do
    live_loop :bassLayedChords do
      9.times do
        sleep 4*4
        bassLayeredChords
      end
      1.times do
        sleep 4*4
        bassLayeredChords2
        bassLayeredChords2
      end
      3.times do
        bassLayeredChords
        sleep 4*4
      end
    end
  end
  
  # Bass
  in_thread do
    live_loop :Bass do
      bass
    end
  end
  
  # Melody (arranged like song)
  in_thread do
    live_loop :melody do
      sleep 4*7+2.75
      melody
      sleep 4*15+2.5
      
      melody
      sleep 4*3+2.5
      
      melody2
      sleep 2.75
      melody
      sleep 2.5
      melody
      sleep 2.5
      melody2
      sleep 2.75
      sleep 4*12
      
      melody
      sleep 4*3+2.5
      
      melody
      sleep 4*3+2.5
      
      melody
      sleep 2.5
      melody2
      sleep 2.75
      melody
      sleep 2.5
      melody2
      sleep 4*8
      sleep 2.75
      
      melody
      sleep 2.5
      melody
      sleep 4*6
      sleep 2.5
      
      melody
      sleep 4*3+2.5
      
      melody2
      sleep 2.75
      melody
      sleep 2.5
      melody
      sleep 2.5
      melody2
      sleep 2.75
      melody
      sleep 2.5
      melody2
      sleep 2.75
      melody
      sleep 2.5
      melody2
      sleep 2.75
      melody
      sleep 4*7+2.5
      
      melody
      sleep 2.5
      melody2
      sleep 2.75
      melody
      sleep 2.5
      melody
      sleep 2.5
      melody
      sleep 2.5
      melody2
      sleep 2.75
      melody
      sleep 2.5
      melody2
      #sleep 4*6 #is the end of actual song
      sleep 4*5
    end
  end
  
  # melody at end of song
  in_thread do
    live_loop :melody3 do
      sleep 4*88
      melody3
      melody3
      sleep 4*12
    end
  end
end

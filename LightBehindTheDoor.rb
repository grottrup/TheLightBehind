
in_thread do
  live_loop :guilt do
    use_synth :dark_ambience
    sleep 0.5
    play :C2, amp: 2, attack: 0.1, sustain: 0.2
    sleep 0.75
    play :G , attack: 0.1, amp: 2
    sleep 0.25
    play :A , attack: 0.1, amp: 4
    sleep 0.5
    play :B , attack: 0.1, amp: 2
    sleep 0.5
    play :A , attack: 0.1, amp: 4
    sleep 0.25
    play :G, attack: 0.1, amp: 2
    sleep 0.25
    sample :bd_808
    play :Fs, attack: 0.1, amp: 4
    sleep 0.50
    with_fx :echo, mix: 1, phase: 0.5 do
      play :G, amp: 2, attack: 0.3, sustain: 0.2, release: 0.8, sustain_level: 0.6
    end
    sleep 0.75
    
    sample :drum_heavy_kick, amp: 0.5
    sample :ambi_drone
    
    use_synth :growl
    play :A , attack: 0.1, amp: 1
    sleep 0.25
    play :B , attack: 0.1 , amp: 0.5
    sleep 0.5
    play :A , attack: 0.1 , amp: 1
    sleep 0.5
    play :G, amp: 1, attack: 0.3, sustain: 0.2, release: 0.8, sustain_level: 0.6
    sleep 0.25
    play :Fs, attack: 0.1, amp: 0.75
    sleep 0.25
    play :G, amp: 1, attack: 0.3, sustain: 0.2, release: 0.8, sustain_level: 0.6
    sleep 1
    
    use_synth :dark_ambience
    play :Fs, attack: 0.1
    sleep 0.5
    play :D, attack: 0.1
    sleep 0.5
    use_synth :growl
    play :C2, attack: 0.1
    sleep 0.5
    use_synth :dark_ambience
    play :D, attack: 0.1
    sleep 0.5
    use_synth :growl
    play :C2, attack: 0.1
    sleep 0.75
    
    use_synth :pluck
    play :E
    sleep 0.25
    play :G
    sleep 1
    play :G
    sleep 0.5
    play :A
    sleep 0.5
    play :B
    sleep 0.25
    play :C
    sleep 0.75
  end
end

in_thread do
  loop do
    2.times do
      sample :ambi_drone
      sleep 1.25
      sample :ambi_swoosh
      sleep 0.75
    end
    2.times do
      use_synth :growl
      sleep 2
    end
  end
end

in_thread do
  loop do
    sample :drum_heavy_kick
    sleep 1
  end
end

in_thread do
  sleep 0.5
  loop do
    use_synth :pnoise
    play :C2, amp: 0.05
    sleep 1
  end
end

in_thread do
  sample :ambi_lunar_land
  sleep 1.5
  count = 0
  count2 = 0
  loop do
    sample :bass_woodsy_c
    sleep 2
    count = count + 1
    if count == 3
      sample :bass_trance_c
      sleep 1
      count = 0
      count2 = count2 + 1
    end
    if count2 == 3
      sample :bass_woodsy_c
      sleep 3
      sample :bass_woodsy_c
      sleep 2
      count2 = 0
    end
  end
end

live_loop :guilt do
  loop do
    use_synth :hollow
    with_fx :echo, mix: 0.5, phase: 0.5 do
      play :B, amp: 1, attack: 0.3, sustain: 0.4, release: 0.5, sustain_level: 0.6
    end
    sleep 0.5
    with_fx :echo, mix: 0.5, phase: 0.5 do
      play :A, amp: 2, attack: 0.3, sustain: 1, release: 0.9, sustain_level: 0.6
    end
    sleep 1
    with_fx :echo, mix: 0.5, phase: 0.5 do
      play :G, amp: 3, attack: 0.3, sustain: 1, release: 4, sustain_level: 0.6
    end
    sleep 4
  end
  
end

in_thread do
  loop do
    sample :bass_trance_c
    sleep 1.25
    sample :glitch_bass_g
    sleep 0.75
    sample :bass_hit_c
    sleep 0.5
    sample :bass_woodsy_c
    sleep 0.5
  end
end

in_thread do
  loop do
    2.times do
      sample :guit_harmonics
      sleep 2
    end
    sample :guit_e_fifths
    sleep 1
  end
end

in_thread do
  sleep 0.5
  loop do
    sample :drum_heavy_kick
    sleep 1
  end
end

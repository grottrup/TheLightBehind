live_loop :guilt do
  loop do
    use_synth :sound_in_stereo
    with_fx :echo, mix: 0.5, phase: 0.5 do
      play :B, amp: 0.5, attack: 0.3, sustain: 0.4, release: 0.5, sustain_level: 0.6
    end
    sleep 0.5
    with_fx :echo, mix: 0.5, phase: 0.5 do
      play :A, amp: 1, attack: 0.3, sustain: 1, release: 0.9, sustain_level: 0.6
    end
    sleep 1
    with_fx :echo, mix: 0.5, phase: 0.5 do
      play :G, amp: 1, attack: 0.3, sustain: 1, release: 4, sustain_level: 0.6
    end
    sleep 4
  end
  
end

in_thread do
  sleep 5
  loop do
    sample :bass_trance_c
    sleep 1.25
    sample :bd_808
    sleep 0.75
    sample :bass_hit_c
    sleep 0.5
    sample :bass_woodsy_c
    sleep 0.5
  end
end

in_thread do
  sleep 2.5
  loop do
    2.times do
      sample :bd_ada
      sleep 10
    end
    sample :drum_bass_soft
    sleep 4
  end
end

in_thread do
  sleep 2.5
  loop do
    8.times do
      4.times do
        2.times do
          sample :bd_808
          sleep 2
        end
        sample :ambi_glass_hum
        sleep 1
      end
      sample :ambi_haunted_hum
      sleep 1
    end
    sample :ambi_glass_rub
    sleep 1
    sample :ambi_piano
    sleep 1
  end
end

in_thread do
  sleep 1.5
  loop do
    sample :bd_pure
    sleep 0.5
  end
end

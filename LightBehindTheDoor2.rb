in_thread do
  live_loop :void do
    1.times do
      sleep 0.5
      play :C2
      sleep 0.75
      play :G
      sleep 0.25
      play :A
      sleep 0.5
      play :B
      sleep 0.5
      play :A
      sleep 0.25
      play :G
      sleep 0.25
      play :Fs
      sleep 0.50
      play :G
      sleep 0.75
      
      play :A
      sleep 0.25
      play :B
      sleep 0.5
      play :A
      sleep 0.5
      play :G
      sleep 0.25
      play :Fs
      sleep 0.25
      play :G
      sleep 1
      
      play :Fs
      sleep 0.5
      play :D
      sleep 0.5
      play :C2
      sleep 0.5
      play :D
      sleep 0.5
      play :C2
      sleep 0.75
      
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
      
      play :G
      sleep 0.5
      play :A
      sleep 0.75
      play :C
      sleep 0.25
      play :D
      sleep 1
    end
    play :A
    sleep 1
    play :G
    sleep 0.25
    play :A
    sleep 0.25
    play :B
    sleep 1
    play :A
    sleep 2
    play :G
    sleep 4
  end
end

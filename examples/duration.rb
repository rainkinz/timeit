$:.unshift File.expand_path("../../lib", __FILE__)
require 'timeit'

Timeit.ti do |timer|
  1.upto(100) do |i|
    if i % 10 == 0
      timer.tick!(10)
      puts "#{i} of 1000 in #{timer.duration} #{timer.rate} items/s" 
    end
    sleep(0.1)
    # timer.split! if i % 300 == 0
  end
  puts "Completed in #{timer.total_duration} "
end

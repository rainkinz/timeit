$:.unshift File.expand_path("../../lib", __FILE__)
require 'timeit'

timer = Timeit.ti do |ti|
  1.upto(100) do |i|
    if i % 10 == 0
      ti.tick!(10)
      puts "#{ti.count} of 1000 in #{ti.duration} #{ti.rate} items/s" 
    end
    sleep(0.1)
  end
end
puts "Completed in #{timer.total_duration} "

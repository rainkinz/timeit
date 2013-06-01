$:.unshift File.expand_path("../../lib", __FILE__)
require 'timeit'

Timeit.ti do |ti|

  total_iterations = 100
  1.upto(total_iterations) do |i|
    if i % 10 == 0
      ti.tick!(10)
      puts "#{i} of #{total_iterations} in #{ti.duration} #{ti.rate} item/s" 
    end

    if i % 20 == 0
      puts "Split for the last 20 items was #{ti.split}, split rate #{ti.split_rate} items/s"
    end

    sleep(0.1)
  end
  puts "Completed in #{ti.total_duration} "
end



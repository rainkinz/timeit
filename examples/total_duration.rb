$:.unshift File.expand_path("../../lib", __FILE__)
require 'timeit'

timer = Timeit.ti do
  sleep 1
end
puts "Completed in #{timer.total_duration} "


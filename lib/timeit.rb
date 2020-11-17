require 'timeit/version'
require 'timeit/timer'

module Timeit
  extend self

  def ti(autostart = true, &block)
    t = Timer.new
    t.start if autostart
    yield t
    t.stop
    t
  end
end


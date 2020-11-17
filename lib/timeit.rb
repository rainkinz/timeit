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

  def increment(name, count = 1)
    @@counts[name] += 1
  end

  def count(name)
    @@counts.fetch(name)
  end

  private

  @@counts = Hash.new(0)

  def start_timer(name = '_default', &block)
    t = Timer.new
    t.start if autostart
    yield t
    t.stop
    t
  end
end


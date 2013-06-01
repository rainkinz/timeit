require 'timeit/version'

module Timeit
  extend self

  class Timer

    attr_reader :start_time

    def initialize(start = Time.now)
      @start_time = start
      @iterations = 0
      @rate = 0

      @split_time = start
      @split_iterations = 0
      @split_rate = 0
    end

    def duration
      duration = Time.now - @start_time
      @rate = @iterations / duration
      duration
    end

    def total_duration
      Time.now - @start_time
    end

    def split
      split = Time.now - @split_time
      @split_time = Time.now

      @split_rate = @split_iterations / split
      @split_iterations = 0

      split
    end

    def reset_split!
      @split_time = @start_time
    end

    def tick!(count = 1)
      @iterations += count
      @split_iterations += count
    end

    def rate
      @rate
    end

    def split_rate
      @split_rate
    end

  end


  def ti(&block)
    t = Timer.new
    yield t
  end

end


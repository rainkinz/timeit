# frozen_literal_string: true

module Timeit
  class Timer
    IllegalStateError = Class.new(RuntimeError)

    attr_reader :start_time, :count

    def initialize
      @start_time = nil
      @count = 0
      @rate = 0

      @split_time = nil
      @split_count = 0
      @split_rate = 0
    end

    def start
      @start_time = @split_time = Time.now
    end

    def stop
      @stop_time = Time.now
    end

    def duration
      duration = Time.now - @start_time
      @rate = @count / duration
      duration
    end

    def total_duration
      if @stop_time
        @stop_time - @start_time
      else
        raise(IllegalStateError, "Timer must be stopped for total duration")
      end
    end

    def split
      split = Time.now - @split_time
      @split_time = Time.now

      @split_rate = @split_count / split
      @split_count = 0

      split
    end

    def reset_split!
      @split_time = @start_time
    end

    def tick!(count = 1)
      @count += count
      @split_count += count
    end

    def rate
      @rate
    end

    def split_rate
      @split_rate
    end

  end

  def ti(autostart = true, &block)
    t = Timer.new
    t.start if autostart
    yield t
    t.stop
    t
  end
end


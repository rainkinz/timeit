Please use hitimes instead: https://github.com/copiousfreetime/hitimes

# timeit

Simple ruby timer.

## Usage

### Calculate the total duration

```ruby
timer = Timeit.ti do
  sleep 1
end
puts "Completed in #{timer.total_duration}"
```


### Log the rate and count 'iterations'

```ruby
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
```

### Splits

```ruby
timer = Timeit.ti do |ti|

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
end
puts "Completed in #{timer.total_duration} "
```

## Installation

Add this line to your application's Gemfile:

    gem 'timeit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install timeit


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

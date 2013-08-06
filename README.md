# timeit

Simple ruby timer.

## Usage

```ruby
Timeit.ti do |timer|
  1.upto(100) do |i|
    if i % 10 == 0
      timer.tick!(10)
      puts "#{timer.count} of 1000 in #{timer.duration} #{timer.rate} items/s" 
    end
  end
  puts "Completed in #{timer.total_duration} "
end
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

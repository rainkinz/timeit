require 'spec_helper'

RSpec.describe Timeit do
  it 'can measure the duration of a block of code' do
    d = Timeit.ti do
      sleep 0.1
    end

    expect(d.duration).to be_within(0.02).of(0.1)
  end

  it 'can increment a counter' do
    Timeit.increment('c1')
    Timeit.increment('c1')
    Timeit.increment('c1')

    expect(Timeit.count('c1')).to eq(3)
  end
end

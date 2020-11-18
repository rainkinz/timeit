require 'spec_helper'

RSpec.describe Timeit do
  it 'can measure the duration of a block of code' do
    d = Timeit.ti do
      sleep 0.1
    end

    expect(d.duration).to be_within(0.02).of(0.1)
  end
end

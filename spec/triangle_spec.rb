# triangle_spec.rb
# Written by: Noranda Brown
# Version: 2014.2.23

require 'spec_helper'

describe Triangle do

  context '#triangle' do
    it 'can be constructed with three points' do
      expect { Triangle.new(Point(), Point(3, 3), Point(5, 5) }.to_not raise_error
    end
  end

  context '#area' do
    it 'returns the area of a rectangle' do
      t = Triangle.new(Point(), Point(2, 2), Point(2, 0))
      expect { t.area.round(1) }.to eq(1.0)
    end
  end
end
# circle.rb
# Written by: Noranda Brown
# Version: 2014.2.23

require 'spec_helper'

describe Circle do

  context '#circle' do
    it 'can be constructed with a point and a radius' do
      expect { Circle.new(Point(3, 3), 5.0 }.to_not raise_error
    end
  end

  context '#area' do
    it 'returns the area of a rectangle' do
      c = Circle.new(Point(), 5.0)
      expect { c.area.round(1) }.to eq(78.5)
    end
  end
end
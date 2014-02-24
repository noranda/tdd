# rectangle_spec.rb
# Written by: Noranda Brown
# Version: 2014.2.23

require 'spec_helper'

describe Rectangle do

  context '#rectangle' do
    it 'can be constructed with two points' do
      expect { Rectangle.new(Point(3, 3), Point(5, 5) }.to_not raise_error
    end
  end

  context '#area' do
    it 'returns the area of a rectangle' do
      r = Rectangle.new(Point(), Point(2, 3))
      expect { r.area.round(1) }.to eq(6.0)
    end
  end
end
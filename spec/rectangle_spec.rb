# rectangle_spec.rb
# Written by: Noranda Brown
# Version: 2014.2.24

require 'spec_helper'
require_relative '../rectangle'

describe Rectangle do

  context '#rectangle' do
    it 'can be constructed with two points' do
      expect { Rectangle.new(Point.new(3, 3), Point.new(5, 5)) }.to_not raise_error
    end
  end

  context '#area' do
    it 'returns the area of a rectangle' do
      r = Rectangle.new(Point.new, Point.new(2, 3))
      expect(r.area).to eq(6.0)
    end
  end
end
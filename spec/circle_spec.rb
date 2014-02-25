# circle.rb
# Written by: Noranda Brown
# Version: 2014.2.24

require 'spec_helper'
require_relative '../circle'

describe Circle do

  context '#circle' do
    it 'can be constructed with a point and a radius' do
      expect { Circle.new(Point.new(3, 3), 5.0) }.to_not raise_error
    end
  end

  context '#area' do
    it 'returns the area of a circle' do
      c = Circle.new(Point.new, 5.0)
      expect(c.area).to eq(78.5)
    end
  end
end
# triangle_spec.rb
# Written by: Noranda Brown
# Version: 2014.2.24

require 'spec_helper'
require_relative '../triangle'

describe Triangle do

  context '#triangle' do
    it 'can be constructed with three points' do
      expect { Triangle.new(Point.new, Point.new(3, 3), Point.new(5, 5)) }.to_not raise_error
    end
  end

  context '#area' do
    it 'returns the area of a rectangle' do
      t = Triangle.new(Point.new, Point.new(2, 2), Point.new(2, 0))
      expect(t.area.round(1)).to eq(2.0)
    end
  end
end
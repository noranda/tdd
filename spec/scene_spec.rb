# scene_spec.rb
# Written by: Noranda Brown
# Version: 2014.2.24

require 'spec_helper'
require_relative '../scene'

describe Scene do

  before do
    @r1 = Rectangle.new(Point.new, Point.new(2, 2))
    @r2 = Rectangle.new(Point.new(3, 3), Point.new(-2, -2))
    @t1 = Triangle.new(Point.new, Point.new(2, 2), Point.new(2, 0))
    @t2 = Triangle.new(Point.new, Point.new(-2, -2), Point.new(-2, 0))
    @c1 = Circle.new(Point.new, 5)
    @c2 = Circle.new(Point.new(3, 2), 3)
  end

  context '#scene' do
    it 'can be constructed with one rectangle' do
      expect { Scene.new(@r1) }.to_not raise_error
    end

    it 'can be constructed with two rectangles' do
      expect { Scene.new(@r1, @r2) }.to_not raise_error
    end

    it 'can be constructed with one triangle' do
      expect { Scene.new(@t1) }.to_not raise_error
    end

    it 'can be constructed with two triangles' do
      expect { Scene.new(@t1, @t2) }.to_not raise_error
    end

    it 'can be constructed with one circle' do
      expect { Scene.new(@c1) }.to_not raise_error
    end

    it 'can be constructed with two circles' do
      expect { Scene.new(@c1, @c2) }.to_not raise_error
    end
  end

  context '#shape_count' do
    it 'returns the number of shapes there are' do
      s = Scene.new(@r1, @r2, @t1, @c2)
      expect(s.shape_count).to eq(4)
    end
  end

  context '#total_area' do
    it 'returns the total area of all shapes' do
      s = Scene.new(@r1, @t1)
      expect(s.total_area.round(1)).to eq(6.0)
    end
  end

  context '#add_shape' do
    it 'adds a shape to the scene' do
      s = Scene.new(@r1, @t1)
      expect(s.add_shape(@c2).shape_count).to eq(3)
    end
  end

  context '#remove_shape' do
    it 'removes a shape to the scene' do
      s = Scene.new(@r1, @t1, @c2)
      expect(s.remove_shape(@c2).shape_count).to eq(2)
    end

    it 'removes duplicate shapes in the scene' do
      s = Scene.new(@r1, @r1, @c2)
      expect(s.remove_shape(@r1).shape_count).to eq(1)
    end

    it 'does nothing if the shape isnt in the scene' do
      s = Scene.new(@r1, @r2, @c2)
      expect(s.remove_shape(@c1).shape_count).to eq(3)
    end

  end
end
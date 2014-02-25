# point_spec.rb
# Written by: Noranda Brown
# Version: 2014.2.24

require 'spec_helper'
require_relative '../point'

describe Point do

  context '#point' do
    it 'can be constructed with 2 arguments' do
      expect { Point.new(3, 3) }.to_not raise_error
    end

    it 'can be constructed with 0 arguments' do
      expect { Point.new }.to_not raise_error
    end
  end
end
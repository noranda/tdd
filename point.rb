# Point.rb
# Written by: Noranda Brown
# Version: 2014.2.24

class Point

  attr_reader :x, :y

  ##
  # Initializes a Point with the given x and y coordinates representing meters from the origin
  def initialize(x = 0.0, y = 0.0)
    @x = x.round(1)
    @y = y.round(1)
  end
end
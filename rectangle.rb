# Rectangle.rb
# Written by: Noranda Brown
# Version: 2014.2.24

class Rectangle

  attr_reader :p1, :p2

  ##
  # Initializes a Rectangle given two points
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end

  ##
  # Returns the area of the rectangle in square meters.
  def area
    height = (@p1.y - @p2.y).abs
    width = (@p1.x - @p2.x).abs
    (height * width).round(1)
  end

end
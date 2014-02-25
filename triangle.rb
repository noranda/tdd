# Triangle.rb
# Written by: Noranda Brown
# Version: 2014.2.24

class Triangle

  attr_reader :p1, :p2, :p3

  ##
  # Initializes a Triangle given three points
  def initialize(p1, p2, p3)
    @p1 = p1
    @p2 = p2
    @p3 = p3
  end

  ##
  # Returns the area of the triangle in square meters.
  def area
    (@p1.x * @p2.y + @p2.x * @p3.y + @p3.x * @p1.y - @p1.y * @p2.x - @p2.y * @p3.x - @p3.y * @p1.x).abs / 2.0
  end

end
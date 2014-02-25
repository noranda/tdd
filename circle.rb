# Circle.rb
# Written by: Noranda Brown
# Version: 2014.2.24

class Circle

  attr_reader :point, :radius

  ##
  # Initializes a Circle given a point and a radius (float)
  def initialize(point, radius)
    @point = point
    @radius = radius.round(1)
  end

  ##
  # Returns the area of the circle in square meters.
  def area
    (Math::PI * @radius * @radius).round(1)
  end
end
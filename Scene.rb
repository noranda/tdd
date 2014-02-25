# Scene.rb
# Written by: Noranda Brown
# Version: 2014.2.24

require_relative 'point'
require_relative 'rectangle'
require_relative 'triangle'
require_relative 'circle'

class Scene

  attr_reader :shapes

  ##
  # Initializes a Scene given an array of shapes
  def initialize(*shapes)
    @shapes = []
    shapes.each { |shape| add_shape(shape) }
  end

  ##
  # Returns a count of the number of shapes in the scene.
  def shape_count
    @shapes.size
  end

  ##
  # Returns the sum of all the areas of the shapes in the scene even if they overlap.
  def total_area
    @shapes.inject(0) { |sum, shape| sum + shape.area }
  end

  ##
  # Adds the given shape to the scene.
  def add_shape(shape)
    @shapes << shape
    self
  end

  ##
  # Removes the given shape from the scene. Duplicates of the same object will be deleted if
  # they exist. If the shape is not in the scene, does nothing.
  def remove_shape(shape)
    @shapes.reject! { |s| s == shape }
    self
  end
end
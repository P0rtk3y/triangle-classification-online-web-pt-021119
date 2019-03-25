require 'pry'

class Triangle
  attr_reader :side_one, :side_two, :side_three
  
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two 
    @side_three = side_three 
  end 
  
  def valid?
    if side_one + side_two < side_three || side_two + side_three < side_one || side_one + side_three < side_two
      raise TriangleError
    end 
    if side_one <= 0 || side_two <= 0 || side_three <= 0
      raise TriangleError
    end 
    if side_one == nil || side_two == nil || side_three == nil
      raise TriangleError
    end 
    
  def kind 
    valid? 
    if @side_one == @side_two && @side_three == @side_one
      return :equilateral 
    elsif @side_one == @side_two || @side_two == @side_three || @side_three == @side_one 
      return :isosceles
    elsif @side_one != @side_two && @side_two != @side_three && @side_three != @side_one 
      return :scalene 
  end 
end

class TriangleError < StandardError 
    def message
      "Invalid Triangle!"
    end
end
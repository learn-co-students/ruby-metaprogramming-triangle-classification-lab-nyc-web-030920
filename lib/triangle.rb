#equilateral: all sides equal
#isosceles: 2 sides equal
#scalene: no sides equal

# require 'pry'

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def kind
    if self.side1 + self.side2 <= self.side3 || self.side1 + self.side3 <= self.side2 || self.side2 + self.side3 <= self.side1
      raise TriangleError
    elsif self.side1 == 0 || self.side2 == 0 || self.side3 == 0
      raise TriangleError
    elsif self.side1 == self.side2 && self.side1 == self.side3
      :equilateral
    elsif self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
      :isosceles
    elsif self.side1 != self.side2 && self.side1 != self.side3 && self.side2 != self.side3
      :scalene
    else
      raise TriangleError
    
      # didn't need to rescue 
    #   begin
    #     raise TriangleError
    #   rescue TriangleError => error
    #     puts error.message
    #   end

    end
    #returns the kind of triangle, symbol form -- :equilateral, :isosceles, or scalene
  end

  class TriangleError < StandardError
    def message
      puts "The lengths you've entered do not create a triangle. Please try again."
    end
  end

end

example = Triangle.new(4, 4, 6)
sca = Triangle.new(4,6,8)
equi = Triangle.new(8,8,8)
zero = Triangle.new(0,1,1)
neg = Triangle.new(-4,5,8)

# binding.pry

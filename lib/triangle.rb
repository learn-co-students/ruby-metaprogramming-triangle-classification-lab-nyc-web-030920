class Triangle
  # write code here
  attr_reader :a, :b, :c  
  # Initializes the triangle class 
    def initialize(a, b, c)
      @a = a 
      @b = b  
      @c = c  
    end
    # Method to validate whether a figure is a triangle or not. 
    def validate_triangle 
      real_triangle = [(a + b > c), (a + c > b), (b + c > a)] 
      [a, b, c].each do |side| 
        real_triangle << false if side <= 0 
      raise TriangleError if real_triangle.include?(false) 
      end 
    end  
    # Method to identify what kind of triangle. 
    def kind 
      validate_triangle 
      if a == b && b == c  
        :equilateral 
      elsif a == b  || b == c || a == c 
        :isosceles 
      else  
        :scalene 
      end 
    end 
    # Custom error class 
    class TriangleError < StandardError 
    end 
end

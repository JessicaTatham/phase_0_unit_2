# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: number of sides of a dice
# Output: A randomly rolled number from that dice
# Steps:


# 3. Initial Solution
=begin
class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
    	raise ArgumentError.new("Only numbers greater than 1 are allowed")
    end
  end
  
  def sides
    return @sides
  end
  
  def roll
return num = rand(6)
  end
end
=end 


# 4. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    if sides < 1
    	raise ArgumentError.new("Only numbers greater than 1 are allowed")
    end
  end
  
  def sides
    return @sides
  end
  
  def roll
 	1 + rand(@sides)
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

die = Die.new(10) 
puts die.sides == 10 
puts die.roll ==  1..10

die = Die.new(0)
puts die.sides == 0
puts die.roll == rand(0) 

die = Die.new(-1)
puts die.sides == ArgumentError
puts die.roll == ArgumentError 


# 5. Reflection 
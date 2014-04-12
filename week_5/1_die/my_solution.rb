# U2.W5: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].
  #Jake Huhn

# 2. Pseudocode

# Input: number of sides of a dice
# Output: A randomly rolled number from that dice
# Steps:
=begin
 Create class, Die
 Define method, initialize, that takes a integer, sides as input.
 Set the instance variable @sides, equal to sides.
 If there the sides variable is less than 1, return an argument error. 
 Define method sides that returns the the integer, sides. 
 Define method roll that returns a random integer within the input side parameters. 

=end


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

=begin
What parts of your strategy worked? What problems did you face?
The challenge was quite straight forward, anything we didn't exactly know
we were able to find in The Learn to Program book by Chris Pine.

What questions did you have while coding? What resources did you find to help you answer them?
I used the ruby docs to find the ArgumentError directions, and a little bit of the Chris Pine's Learn
to Program for some of the roll method.

What concepts are you having trouble with, or did you just figure something out? If so, what?
None in this challenge.

Did you learn any new skills or tricks?
I learned about the ArgumentError.

How confident are you with each of the learning objectives?
I feel very confident with the learning objectives.

Which parts of the challenge did you enjoy?
I enjoyed learning more about the Class methods.

Which parts of the challenge did you find tedious?
Trying to get Driver Code that works. I know the code itself works, but we had trouble getting the driver code to pass as true.
  
=end


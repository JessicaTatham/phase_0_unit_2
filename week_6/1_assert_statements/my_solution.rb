# U2.W6: Testing Assert Statements


# I worked on this challenge [by myself, with: ].
	#myself

# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end
 
#name = "bettysue"
#assert { name == "bettysue" }
#assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
=begin
When running the above code, an error message comes up saying that the code
in line 15 failed. This is because the yeild statement took the variable, name, 
and raised the error message when it was given a driver test not in the variable
parameters. The assert method will always raise "Assertion failed", unless the test
yeilds. Since on of the tests didn't fall in the parameters, the assert method
continued to raise the error message.
=end

# 3. Copy your selected challenge here
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
=begin
die = Die.new(10) 
puts die.sides == 10 
puts die.roll ==  1..10

die = Die.new(0)
puts die.sides == 0
puts die.roll == rand(0) 

die = Die.new(-1)
puts die.sides == ArgumentError
puts die.roll == ArgumentError 
=end



# 4. Convert your driver test code from that challenge into Assert Statements

assert {
die = Die.new(10) 
puts die.sides 
puts die.roll}

assert {
	die2 = Die.new(3)
	puts die2.sides
	puts die2.roll
}

# 5. Reflection 

=begin
This challenge seemed pretty straight forward. I feel quite comfortable
with the yeild block as well as the assert testing. When testing my assert
tests, I would receive the correct numbers for the sides and roll, but it
would end with the error message. I'm not sure if that is a problem with my code
or if that is closing out the unless loop in the assert method. Other than that, 
I think this challenge went relatively smoothly and quickly. Giving me plenty of extra
time to study up on some of the things I had issues with last week :)
=end
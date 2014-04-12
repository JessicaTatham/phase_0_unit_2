# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

	#myself

# 2. Pseudocode

# Input: An answer in the form of an integer and a guess in the form of an integer.
# Output:  An answer informing you whether your guess is high, low, or correct. If asking for
	#whether your the game has been solved, the output will be either true or false.
# Steps:

=begin
Create a glass, GuessingGame
Define a method, initialize that takes an integer called answer.
Make an instance method guess which takes guess as its input.
Guess should return :high if the guess is larger than the answer, 
	:correct if the guess is equal to the answer, and :low if the 
	guess is lower than the answer.
Make another instance method, solved? which returns true if the guess was correct
	or false if not.

=end

# 3. Initial Solution
=begin
class GuessingGame
  def initialize(answer)
   @answer = answer
  end
  
  def guess(number)
  	if number > @answer
  		return :high
  	elsif number < @answer
  		return :low
  	else
  		return :correct
  end
  
  def solved?
  	if number == @answer
  		true
  	else
  		false
  end
end
=end



# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
   @answer = answer
  end
  
  def guess(number)
  	@number = number
  	if @number > @answer
  		return :high
  	elsif @number < @answer
  		return :low
  	else
  		return :correct
  	end
  end
  
  def solved?
  	if @number == @answer
  		true
  	else
  		false
  	end
  end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

game = GuessingGame.new(163)

puts game.guess(12) == :low
puts game.guess(200) == :high
puts game.solved? == false
puts game.guess(163) == :correct
puts game.solved? == true 



# 5. Reflection 

=begin
	I really enjoyed this challenge. I feel as if I have a very strong
	understanding of the if/else method, and I probably fall back on it
	a bit too often, but I'm just happy that I could find a way to answer
	this challenge. I did have problems with the instance methods. I understand
	how to use them, I just didn't understand which inputs we made into instance variables,
	and which remained as inputs. I think I have a strong understanding of the driver code
	and creating and using classes.
	
=end


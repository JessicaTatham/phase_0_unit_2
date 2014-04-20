# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].
	#myself

# Original Solution
=begin
class CreditCard

	def initialize(card_num)
		@card_num = card_num
		raise ArgumentError.new("Please enter a valid 16 digit card number.") if @card_num.to_s.length != 16
	end

	def double_integer
		separate_integer = @card_num.to_s.chars.map(&:to_i)
		separate_integer.each_index do |index| separate_integer[index] *=2 if index % 2 == 0
		end
	end

	def sum_integer
		doubled = double_integer.map! do |num| 
			if num > 9
				num.to_s.chars.map(&:to_i)
			else
				num
			end
		end
		doubled.flatten.reduce(:+)
	end

	def check_card
		sum_integer % 10 == 0	
	end

end

=end
# Refactored Solution

class CreditCard

	def initialize(card_num)
		raise ArgumentError.new("Please enter a valid 16 digit card number.") if card_num.to_s.length != 16
		@card_num = card_num.to_s.split('')
	end

	def check_card

		double_integer = @card_num.each_with_index.map { |e, i|  i%2==0 ? e.to_i*2 : e.to_i }

		sum_integer = double_integer.join.split('').map(&:to_i)

		return sum_integer.inject(:+) % 10 == 0
	
	end

end




# DRIVER TESTS GO BELOW THIS LINE


card_three = CreditCard.new(4563960122001999)
	puts card_three.check_card #== true

card_one = CreditCard.new(4567987612344389)
	puts card_one.check_card #== false




# Reflection 

=begin
While looking through other people's solutions for this challenge, trying to find someones
to refractor, I stumbled upon this idea. I am blown away that someone was able to figure this out. 
It is a simplified code to mine, using the each_with_index method, and utilizes variables instead of
individual methods for each step of the code. Personally, I prefer to separate using each of the methods,
just because it helps me understand what the code is doing, but I understand that as
we become more advanced in our coding, it makes sense to combine the methods to avoid excess room for error.
This refractored code also allows for much simpler driver tests. I was frustrated with this challenge the 
first time around, but now going back and reviewing it, I feel more confident in what each piece of the code
is doing. 

=end

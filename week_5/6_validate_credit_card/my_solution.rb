# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
	#myself

# 2. Pseudocode

# Input: A 16 integer credit card number
# Output: A true or false depending of whether the credit card is valid
# Steps:
=begin
Define the method, initialize that makes the card number into a instance variable.
If the card number is not 16 digits long, raise and argument error.
Define the method, check_card, which will follow the following algorithm steps.
	Double every other digit.
	Sum all the digits together. If the doubled digits are greater than 9, add the digits separately (i.e 10 -> 1+0)
	If the total is a multiple of 10, return true.
	Else return false
=end

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits

=begin
class CreditCard

	def initialize(card_num)
		@card_num = card_num
		if @card_num.to_s.length != 16
			raise ArgumentError.new("Please enter a valid 16 digit card number.")
		end
	end

	def check_card
		check_sum
	end

	def double_integer
		separate_integer = @card_num.to_s.chars.map(&:to_i)
		separate_integer.each_index do |index|
		@doubled = separate_integer[index] *=2 if index % 2 == 0
	end
	end

	def sum_integer
		@doubled.map do |num|
			if num > 9 
				num.to_s.chars.map(&:to_i)
			else
				num
			end
		@doubled.reduce(:+)
	end

	def check_sum
		if sum_integer % 10 == 0
			true
		else
			false
		end
	end
end

=end

# 4. Refactored Solution

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


# 1. DRIVER TESTS GO BELOW THIS LINE

card_one = CreditCard.new(4567987612344389)

	puts card_one.double_integer == [8, 5, 12, 7, 18, 8, 14, 6, 2, 2, 6, 4, 8, 3, 16, 9]
	puts card_one.sum_integer == 92
	puts card_one.check_card == false

#card_two = CreditCard.new(1234567899876543212345)

	#puts card_two.double_integer == ArgumentError
	#puts card_two.sum_integer == ArgumentError
	#puts card_two.check_card == ArgumentError

card_three = CreditCard.new(1111111111112222)

	puts card_three.double_integer == [2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 4, 2, 4, 2]
	puts card_three.sum_integer == 30
	puts card_three.check_card == true

# 5. Reflection

=begin
	I continue to be very frustrated because I keep on having to peak into other
	peoples codes to figure out even how to start these challenges. I'll read the directions
	and have a couple of ideas, but no real solution as to how to complete the challenege.
	Once I've read through someone elses, code I understand what it is that I need to do,
	but I don't feel comfortable using someone elses ideas. I just don't know if this is 
	something I can fix with time as I learn more and practice more, or if I just don't
	have the right brain to be a programmer. In some of our challenges, I feel like this is so
	easy and I have no problems, but in challenges such as this one, I really feel like I'm in the
	deep end and have no idea how to swim. 
=end 

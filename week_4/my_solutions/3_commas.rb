# U2.W4: Title here


# I worked on this challenge [by myself, with: ].
	#myself
# 2. Pseudocode

# Input: an integer
# Output: a comma-separated integer as a string
# Steps:

	#define a method that takes an integer as the input 
	#create if/else statement that differentiates between numbers less than 1000 and greater than 1000.
	#the numbers that are less than 1000, will return the original number.
	#The numbers that are greater than 1000, will turn the number into a string and reverse it.
	#The sting needs to be sliced every third number and then joined by a comma and re-reversed.

# 3. Initial Solution

#
=begin
def separate_comma(num)
	string = num.to_s
	if string > 4
		string
	else
		string.reverse.each_slice(3).join(",").reverse
	end
end
=end

# 4. Refactored Solution

def separate_comma(num)
	if num < 1000
		num
	else
		a = num.to_s.reverse
		b = a.chars.to_a
		c = b.each_slice(3)
		d = c.map{|c| join(c)}
		e = d.join(",")
		f = e.reverse
	end
end



# 1. DRIVER TESTS GO BELOW THIS LINE

print separate_comma(7847362847564736384737)



# 5. Reflection 
=begin
I had a lot of trouble with this challenge. I ended up having to do a lot of research to figure out
 how to join the numbers. I don't have any experience using the #map method as well as the #chars method.
I knew I wanted to use the each_slice method because it was something I was familier with, but other
than that, I was very lost in how to complete this challenge. I worry that I might be falling behind
I haven't been able to fit in a lot of time for outside research into more methods. But I'm happy 
that this week I learned about 3 new methods, and I'm that much closer to being a ruby developer!
=end




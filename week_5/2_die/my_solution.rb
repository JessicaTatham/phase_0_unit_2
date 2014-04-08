# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# Jess Tath

# 2. Pseudocode

# Input: User inputs dice side labels when calling the Die class. 
# Output: The roll method returns the label of a random side of the dice, 
# the sides method returns the number of sides and if the labels parameter
# is nothing, it returns an argument error. 
# Steps:

# Create a class, Die.
# Define method, initialize, that takes an array of labels as the input.
# Set the instance variable @labels, equal to labels.
# If there is no user input for the label parameter, return an argument error. 

# Define method sides that returns the length of the user array of strings. 

# Define method roll that returns a random one of the user inputted strings. 

# 3. Initial Solution
=begin
class Die
  def initialize(labels)
      @labels = labels
      if labels == []
        raise ArgumentError.new("PUT SOMETHING IN THE METHOD!!!")
    end
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels.sample 
  end
end
=end

# 4. Refactored Solution


class Die
  def initialize(labels)
      @labels = labels
      if labels == []
       raise ArgumentError.new("PUT SOMETHING IN THE METHOD!!!") 
    end
  end

  def sides
    return @labels.length
  end

  def roll
    return @labels.sample 
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE


die = Die.new(['Hi','Bonjour','Hola', 'Halo', 'Hai', 'Hey', 'Sup','Goodmorning']) 
puts die.sides == 8
puts die.roll == ('Hi') || ('Bonjour') || ('Hola') || ('Halo') || ('Hai')


# 5. Reflection 

=begin
What parts of your strategy worked? What problems did you face?
Jake and I pair well together. We bounced ideas off eachother until the code passed all the tests. 
The only problem we ran into was trying to get the driver code to work.

What questions did you have while coding? What resources did you find to help you answer them?
We researched the #sample method, but other than that, everything went smoothly.

What concepts are you having trouble with, or did you just figure something out? If so, what?
Nothing in this challenge.

Did you learn any new skills or tricks?
I learned the #sample method.

How confident are you with each of the learning objectives?
I feel very confident in the learning objectives.

Which parts of the challenge did you enjoy?
I enjoyed all of it :) 

Which parts of the challenge did you find tedious?
Trying to get the driver code to work. I know the program works, but I couldn't get the driver code to test it right.
  
=end


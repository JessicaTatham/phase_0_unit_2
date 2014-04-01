
# I worked on this challenge [by myself, with: ]. JESSICA JAKE KEN

# 2. Pseudocode

# Input: Array of names 
# Output: Accountability Group lists for 3 cohorts, made up of 4 or more names 
# Steps: 

# Define method, accountability_group, that takes an array as a parameter 
# Shuffle the array and iterate through the array and slice out groups of 4 
# Store the result of the iteration in a variable, output_array
# IF the length of the last array is divisible by 4, then: 
# Return the output_array 
# ELSE: 
# Pop the last array of the output and store it in a new variable, extra_people 
# For all the elements in extra_people, push each individually into the other arrays, one at a time, starting with the first 
# Return output_array 

# 3. Initial Solution

def accountability_group(cohort_array)
  output_array = cohort_array.shuffle.each_slice(4).to_a
  if output_array.last.length % 4 == 0 
    return output_array 
  else 
    extra_people = output_array.pop 
    for i in 0...output_array.length 
      output_array[i].push(extra_people[i])
    end
    return output_array
  end 
end 

# 4. Refactored Solution

def accountability_group(cohort_array)
  output_array = cohort_array.shuffle.each_slice(4).to_a
  if output_array.last.length % 4 != 0 
    extra_people = output_array.pop 
    for i in 0...output_array.length 
      output_array[i].push(extra_people[i])
    end
  end 
  output_array 
end 

# DRIVER TESTS GO BELOW THIS LINE

## Simple Test

divisible_by_four = ['a','b','c','d','e','f','g','h'] # an array that has length divisible by four
indivisible_by_four = ['a','b','c','d','e','f','g','h','i'] # an array that has length indivisible by four

divisible_output = accountability_group(divisible_by_four) # when we put an array divisible by four in our method
puts divisible_output[0].length == 4 # checks that the first little array in our output has a length of four

indivisible_output = accountability_group(indivisible_by_four) # when we put an array indivisible by four in our method
puts indivisible_output[0].length != 4 # checks that the first little array in our output does not have a length of four 

# Runs the method on the same array to see that the output gets shuffled every time we use the method
shuffle_test = accountability_group(divisible_by_four) 
puts shuffle_test != divisible_output

shuffle_test2 = accountability_group(divisible_by_four)
puts shuffle_test2 != indivisible_output

## Specific Test

array_cicadas = 
["Adeoye Jaiyeola",
"Brittaney Staton", 
"Chantelle Turnbull",
"Charu Sharma",
"Danielle Adams", 
"David Kerr",
"Dinesh Rai",
"Gregory Knud", 
"Ian Greenough", 
"Jake Huhn",
"Jason Matney",
"Jessica Tatham", 
"John Quigley",
"Judy Jow",
"Justin Lee", 
"Kai Prout",
"Ken Sin", 
"Kennedy Bhagwandeen", 
"Kevin Zhou", 
"Lasse Sviland", 
"Natalie Baer", 
"Nick Giovacchini", 
"Samuel Arkless", 
"Timothy McClung"] # 24 % 4 = 0

array_fiddler_crabs = [ 
'Adam Godel ',
'Adrian Pask ',
'Brendan Scarano' ,
'Christine Feaster' ,
"Howard O'Leary ",
'Insung Lee ',
'Jared Rader ',
'Johnathan Weisner' ,
'Julia Himmel ',
'Justin Phelps ',
'Keaty Gross ',
'Kenneth Uy ',
'Lawrence Manfredi ',
'Neal Fennimore ',
'Payam Pakmanesh ',
'Philip London ',
'Ruben Osorio ',
'Ryan Rebo ',
'Sahan Pitigala ',
'Shaun McGeever ',
'Timmy Huang ',
'Tyler Adams'  ] # 22 % 4 = 2

array_dragonflies = [ 
'Andrew Larson',
'Andrew Younge' ,
'Caroline Artz ',
'Dan Armstrong ',
'Elizabeth Cruz ',
'Elizabeth Kaplan ',
'Erik Olsen ',
'Fabi Castillo', 
'George Amolsch', 
'Guido Medina ',
'Jason Chodera ',
'Justin Stewart ',
'Kevin Kanhirun ',
'Lars Berg ',
'Matthew Berns', 
'Matthew Didier', 
'Michael Hamel ',
'Milan Grubnic ',
'Mohammad Abdeljalil ',
'Nate Kandler ',
'Nicholas Eich ',
'Oliver Treadwell', 
'Paige Crum ',
'Robb Hong ',
'HyungMin ',
'SANTRECE ROSS ',
'Syed raza a. Jafri '] # 27 % 4 = 3 

p accountability_group(array_cicadas)
p accountability_group(array_fiddler_crabs)
p accountability_group(array_dragonflies)

# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
	# Working in a group really worked well for this challenge. We each gave input that ultimately created a code that worked.

#What questions did you have while coding? What resources did you find to help you answer them?
	# We originally didn't know how to separate the cohort into groups of 4, so we had to research different ways to do that, eventually ending up with .each_slice().
	#  We mainly used the Ruby doc to research methods.

#What concepts are you having trouble with, or did you just figure something out? If so, what?
	# I had trouble with the testing docs. This will be something I have to spend some time practicing.

#Did you learn any new skills or tricks?
	# I learned about the .each_slice() method as well as the .shuffle method. 

#How confident are you with each of the learning objectives?
	# I feel confident in the learning objectives.

#Which parts of the challenge did you enjoy?
	# I enjoyed having to figure out each and every part of this challenge. In the past, we've had to do certain peices of the code and it's all come together. I enjoyed the challenge
	# of coming up with all the parts of the code.

#Which parts of the challenge did you find tedious?
	# THESE SAME QUESTIONS AS A REFLECTION!




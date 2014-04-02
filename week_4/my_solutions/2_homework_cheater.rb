# U2.W4: homework_cheater


# I worked on this challenge [by myself, with: ].

	# by myself... okay, Jake helped a little!

# 2. Pseudocode

# Input: An array that includes a name, title, person, gender, place, topic, date, and thesis statement.
# Output: A finished assignment
# Steps:

#Define a method that recieves an input with a title, person, place, topic, date, and thesis statement. 
#Create an if/else statment to differenciate whether the person is male or female.
#Write a generic template for an essay that inputs the arrays stings into the template. 


# 3. Initial Solution
def homework_cheater (name, title, person, gender, place, topic, date, thesis statment)
	if (gender == "female")
		return
			"#{title} by #{name}
			 #{person} was the most important person of her time. She was very well known with #{topic} in #{date}. 
			 #{thesis statment}. When #{person} was in #{place}, she contributed greatly. I'm glad I got the opportunity to learn about #{person}."

	else
		return
			"#{title} by #{name} 
			#{person} was the most important person of his time. He was very well known with #{topic} in #{date}. 
			#{thesis statment}. When #{person} was in #{place}, he contributed greatly. I'm glad I got the opportunity to learn about #{person}."
			
	end
end
		

# 4. Refactored Solution

def homework_cheater (name, title, person, gender, place, topic, date, thesis_statment)
	if (gender == "female")
		puts
			"#{title} by #{name} #{person} was the most important person of her time. She was very well known with #{topic} in #{date}. #{thesis_statment}. When #{person} was in #{place}, she contributed greatly. I'm glad I got the opportunity to learn about #{person}."

	else
		puts
			"#{title} by #{name} #{person} was the most important person of his time. He was very well known with #{topic} in #{date}. #{thesis_statment}. When #{person} was in #{place}, he contributed greatly. I'm glad I got the opportunity to learn about #{person}."
			
	end
end
		







# 1. DRIVER TESTS GO BELOW THIS LINE

puts homework_cheater("Joe Shmoe", "Sheldon and The Big Bang Theory", "Sheldon", "male", "Los Angelas", "The Big Bang Theory","2014", "Sheldon was extremely intelligent and knew lots of things about lots of stuff")== "Sheldon and The Big Bang Theory by Joe Shmoe Sheldon was the most important person of his time. He was very well known with The Big Bang Theory in 2014. Sheldon was extremely intelligent and knew lots of things about lots of stuff. When Sheldon was in Los Angelas, he contributed greatly. I'm glad I got the opportunity to learn about Sheldon."
			
			

puts homework_cheater("Leonardo diCaprio", "Wolf on Wall Street", "Wolfie", "male", "New York City", "The Stock Market","2047", "Wolfie stole from the rich and pocketed the winnings")== "Wolf on Wall Street by Leonardo diCaprio Wolfie was the most important person of his time. He was very well known with The Stock Market in 2047. Wolfie stole from the rich and pocketed the winnings. When Wolfie was in New York City, he contributed greatly. I'm glad I got the opportunity to learn about Wolfie."


puts homework_cheater("Ellen Degeneres", "Movie Stars", "Mom", "female", "London", "TV","2008", "Sophia Grace and Rosie are stars on The Ellen Degeneres Show")== "Movie Stars by Ellen Degeneres Mom was the most important person of her time. She was very well known with TV in 2008. Sophia Grace and Rosie are stars on The Ellen Degeneres Show. When Mom was in London, she contributed greatly. I'm glad I got the opportunity to learn about Mom."






# 5. Reflection 

#What parts of your strategy worked? What problems did you face?
	# I created the template and wrote the driver tests first, then defined the method. I think that this strategy just doesn't work very well for me. I prefer to write the code and then write the tests, otherwise I end up going back
	#and forth between the two and end up making more mistakes than necessary. 

#What questions did you have while coding? What resources did you find to help you answer them?
	# nothing on this challenge.

#What concepts are you having trouble with, or did you just figure something out? If so, what?
	# I attempted to use irb to test my code and that failed terribly, so I think I could use more practice with irb.

#Did you learn any new skills or tricks?
	# With Jakes suggestion, I used the #{input} method instead of the + variable + method. I think this was a much better technique!

#How confident are you with each of the learning objectives?
	# I feel confident with the learning objectives.

#Which parts of the challenge did you enjoy?
	# I enjoyed when my code tested as TRUE!!!

#Which parts of the challenge did you find tedious?
	# The code would only pass as true if the output templet was exactly the same as the codes output. Trying to find the smallest errors in the code was tedious.




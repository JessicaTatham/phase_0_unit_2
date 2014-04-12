# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
	#Define a method, boggle_word that takes two inputs, board and coordinates
	#The method takes the coordinates and uses the map method to locate specific letters
		# based off of the first and last integer placed in the input coordinates. 
	#Join the letters together with the join method, no spaces.
# Initial Solution

#def boggle_word(board, coordinates)
	#coordinates.map {|coordinates| board[coordinates.first][coordinates.last]}.join("")
#end

# Refactored Solution
def boggle_word(board, coordinates)
	coordinates.map {|coordinates| board[coordinates.first][coordinates.last]}.join("")
end


# DRIVER TESTS GO BELOW THIS LINE
puts boggle_word(boggle_board, [[0,0],[1,1],[1,1],[3,2]])
puts boggle_word(boggle_board, [[0,1],[1,1],[2,1],[3,2]])
puts boggle_word(boggle_board, [[0,0],[1,0],[3,2],[3,3]])

# Reflection 
#This portion was very straight forward. In the directions, the method is already given to us
# so it was just a matter of correctly rewriting it and of course understanding it. I enjoyed coming
# up with the driver code!

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
#Define a method, get_row that accepts the input, row.
# The method should take number, and return all the elements in the row.
# To do this, you simply call the array like you were calling a piece of an array.

# Initial Solution
#def get_row(board,row)
	#return board(row}
#end

# Refactored Solution
def get_row(board,row)
	return board[row]
end


# DRIVER TESTS GO BELOW THIS LINE
print get_row(boggle_board, 1)

# Reflection 
# I overthought this challenge a lot. I tried a bunch of different methods that were way too
#complicated. Eventually, I smacked myself in the head and called it as if I was just calling 
# a piece of an array, and voila!! It worked!

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
#Define a method, get_col, that accepts the input col(for column)
#Similar to the get_row method, the method needs to output the elements in the column.
# To do this,

# Initial Solution
def get_col(board, col)
	columns = board.transpose
	return columns[col]
end
# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
print get_col(boggle_board, 0)

# Reflection

# This challenge took a lot of research, and out of the box thinking.
# After finally finding the transpose method, everything went smoothly.
#I enjoyed the challenge of this weeks projects. Ruby Docs definitely helped
# with challenge. 
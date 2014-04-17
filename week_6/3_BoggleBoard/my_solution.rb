# U2.W6: Create a BoggleBoard Class


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution
=begin
class BoggleBoard

	def initialize(dice_grid)
		@dice_grid = dice_grid 
 	end

  	def create_word(coordinates)
  		coordinates.map {|coordinates| @dice_grid [coordinates.first][coordinates.last]}.join("")
 	 end

 	 def get_row(row)
  		return @dice_grid [row]
 	 end

  	def get_col(col)
  		columns = @dice_grid.transpose
		return columns[col]
 	 end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
=end

# 4. Refactored Solution

class BoggleBoard

	def initialize(dice_grid)
		@dice_grid = dice_grid 
 	end

  	def create_word(coordinates)
  		coordinates.map {|coordinates| @dice_grid [coordinates.first][coordinates.last]}.join("")
 	 end

 	 def get_row(row)
  		row = @dice_grid[row]
  		row.map { |x| x.to_s}.join("")
 	 end

  	def get_col(col)
  		columns = @dice_grid.transpose
		arr_col = columns[col]
		arr_col.map { |x| x.to_s}.join("")
 	 end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]




# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

boggle_board = BoggleBoard.new(dice_grid)
	p boggle_board.create_word([[0,0],[1,1],[1,1],[3,2]]) == "book"
	p boggle_board.create_word([[1,2], [1,1], [2,1], [3,2]]) == "dock"
	p boggle_board.get_row(0) == "brae"
	p boggle_board.get_row(1) == "iodt"
	p boggle_board.get_row(2) == "eclr"
	p boggle_board.get_row(3) == "take"

	p boggle_board.get_col(0) == "biet"
	p boggle_board.get_col(1) == "roca"
	p boggle_board.get_col(2) == "adlk"
	p boggle_board.get_col(3) == "etre"

	p boggle_board.create_word([[3,2]]) == "k"

#Outputs of driver test.
=begin
"book"
"dock"
"brae"
"iodt"
"eclr"
"take"
"biet"
"roca"
"adlk"
"etre"
=end


# 5. Reflection 
=begin
I found this challenge extemely enjoyable! My stratagy was simply to take my time
 and think through what I've already learned to really test myself in this challenge. In the
 end, I found that I didn't need to do any extra research and by testing out methods that 
 I aready know, I was able to come up with a solution. This was a huge confidence boost, being
 able to succeed in this challenge just using stuff I already know! I have found that if I
 dedicate time each day to doing a little bit of outside studying, it has helped me to 
 complete these challenges a lot easier.

 As far as the object-oriented programming goes, I found that by catagorizing the methods into the
 class BoggleBoard visually an mentally helped me complete this challenge. I think by making our 
 BoggleBoard into a class, therefore making it into an object, not only help organize the code, but 
 would also help future programers look at your code and understand exactly what you are doing. 
=end

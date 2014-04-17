# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].
	#myself - hence SOLO challenge ;)

# Pseudocode
=begin

Create a ruby class, called Song.
Create a method, add, which will take input and put it in the desired playlist.
Create a method, num_of_tracks, which will output how many songs are in the chosen playlist.
Create a method, play, which will play the chosen song.
Create a method, remove, which will remove the inputed song.
Create a method, includes?, which will check the chosen playlist for the inputed song and return true or false.
Create a method, play_all, which will play all songs in chosen playlist.
Create a method, display, which will output all the songs in the chosen playlist. 
	
=end


# Initial Solution
=begin
class Song

	def initialize(playlist, song)
		@playlist = playlist
		@song = song
	end

	def add(song)
		@playlist.insert(song)
	end

	def num_of_tracks
		@playlist.count
	end

	def play
		"Now playing #{@song}"
	end

	def remove(song)
		@playlist.delete(song)
	end

	def includes?(song)
		@playlist.include?(song) 
	end

	def play_all
		"Now playing #{@playlist}"
	end

	def display
		@playlist
	end

end
=end

# Refactored Solution

class Song
attr_reader :song, :artist
	def initialize(song, artist)
			@song = song
			@artist = artist
		"You have now added #{song} by #{artist}, to your playlist."
	end

end

class Playlist
	attr_reader :songs

	def initialize(*playlist)
		@playlist = *playlist
	end

	def add(*song)
		@playlist.push(*song)
	end

	def num_of_tracks
		@playlist.count
	end

	def play(song)
		puts "Now playing #{song.song}"
	end

	def remove(song)
		@playlist.delete(song)
	end

	def includes?(song)
		@playlist.include?(song) 
	end

	def play_all
		@playlist.each do |song|
			puts "Now playing #{song.song} by #{song.artist}."
		end
	end

	def display
		@playlist.each do |song|
			puts "#{song.song} by #{song.artist}."
		end
	end

end




# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
my_playlist.play(going_under)
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display



# Reflection 

=begin
I think this challenge was probably a bit more difficult than the other solo challenge. I had a lot 
of trouble coming up with code to go with the driver code. It is a lot easier to make driver code based
off of the code, instead of the other way around. At first, I didn't realize that we needed to make two classes,
so it took me a while to get all the methods in the right spot, and everything having the right number of 
arguments. I also had to research using the *. I'm still not sure I fully understand its use, but at least now
I know it is an option for challenges like this in the future. For methods such as add, remove, includes
, etc, I was happy to see that I already knew which methods would be best to use.
=end
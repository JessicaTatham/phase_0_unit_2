# U2.W5: Virus Predictor

# I worked on this challenge [by myself, with: ].
  #myself
# EXPLANATION OF require_relative
#
# The require relative is taking the data from the state_data code as the input for this program. 
# It is our testing data.


require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

=begin
 This method initializes the class. It takes the input from the require relative and makes it
 into instance variables.    
=end

  def virus_effects  #HINT: What is the SCOPE of instance variables?
    predicted_deaths
    speed_of_spread
  end

=begin
  This method gives access to the predicted deaths method and the speed of spread methods. The 
  scope of the instance variables are that they can only be accessed within the class they are placed.
=end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method

=begin
The only definition I could find on the private method is that it can be only called without an explicit
receiver. My best guess is that it makes any methods after it to be set as private and not accessable/visable to users.
If it were placed above the virus_effects method, it would also set that method to private. 
=end

  def predicted_deaths
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else 
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

=begin
This method is using the population and the population density to mathmatically calculate the number of deaths. 
The number of deaths is then returned to the user in a string. The more dense a population is, the greater the 
number of deaths is going to be.
The #floor method returns the largest integer less than or equal to the float integer. In
other words, it's rounding the decimal integer.
=end

  def speed_of_spread
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else 
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

=begin
This method is defining the speed that the disease will spread. It begins by seeting the speed
to a default of 0.0. and then adds speed to it depending on the population density. Then it returns it in
the form of a string.
=end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, info|
  VirusPredictor.new(state, info[:population_density], info[:population], info[:region], info[:regional_spread]).virus_effects
end

=begin

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

=end

#BONUS
puts "Washington's population is #{washington.population}."


#Reflection
=begin
This challenge was a little confusing. I think that the instructions could have been phrased a
bit clearer. I didn't have too many problems commenting out what the code was doing, but I did have 
to research more into the instance variables. I still don't feel a hundred percent confident about them.
I knew what I needed to do for the driver code in order to have the program test through all 50 states,
  but I needed to research into how to use the symbols in the driver code. I didn't see too many problems with the
  code, so I didn't really do too much refractoring. Maybe there was a way to improve this code, but with my
  beginners knowledge, I didn't know how.
  
=end

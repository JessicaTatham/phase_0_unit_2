# U2.W6: Drawer Debugger


# I worked on this challenge [by myself, with: ].

    #Kevin and Jessica

# 2. Original Code

class Drawer

    attr_reader :contents

    # Are there any more methods needed in this class?
        #No

    def initialize
        @contents = []
        @open = true
    end

    def open
        @open = true
    end

    def close
        @open = false
    end
    
    def add_item(item)
        @contents << item
    end
    
    def remove_item(item = @contents.pop) #what is `#pop` doing? Taking the item out of the contents variable
        @contents.delete(item)
    end
    
    def dump  # what should this method return? This method now returns an empty drawer.
        puts "Your drawer is empty."
        @contents = []
    end
    
    def view_contents
        puts "The drawer contains:"
        @contents.each {|silverware| puts "- " + silverware.type }
    end
    
end

class Silverware
    attr_reader :type, :clean

    # Are there any more methods needed in this class?
        #Yes, we added a clean_silverware method

    def initialize(type, clean = true)
        @type = type
        @clean = clean
    end

    def eat
        puts "eating with the #{type}"
        @clean = false
    end
    
    def clean_silverware
        @clean = true
    end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents # What should this return? # This should return an empty Drawer


fork = Silverware.new("fork")
silverware_drawer.add_item(fork)
silverware_drawer.view_contents
fork = silverware_drawer.remove_item(fork)
fork.eat

#BONUS SECTION
puts fork.clean

# DRIVER TESTS GO BELOW THIS LINE

puts "\nDriver Tests Below:"
drawer = Drawer.new
fork = Silverware.new("fork")
drawer.add_item(fork)
p drawer.remove_item(fork) == fork
p drawer.dump == []
p drawer.open == true
p drawer.close == false
p fork.clean == true
p fork.eat == false

# 5. Reflection
=begin
I paired with Kevin on this challenge, and I am happy to say that the pairing
went very well. The directions for the challenge were a little vague,
so it was nice having Kevin to bounce ideas off of and compare code with. 
I enjoyed the dubugging and being able to use the error messages to find the problems. 
Nothing in this challenge was very tedious as Kevin and I seemed to find all of the 
problems very quickly and were able to fix them easily.

=end

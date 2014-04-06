# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].
#myself

# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence) #Defining the method and the input
    alphabet = ('a'..'z').to_a #creating a variable, alphabet and making it an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] # creating variable, cipher. #zip method takes the
    # alphabet variable and generates a sequence of arrays that correspond to the .length of the arguments. 
    #The #rotate method will rotate the elements of the array to create a new array. I don't exactly now what 
    # they do when put together like this.
    spaces = ["@", "#", "$", "%", "^", "&", "*"] #creating variable, spaces, that includes an array of symbols.
    
    original_sentence = sentence.downcase #making the input lowercase
    encoded_sentence = [] #creating a new array, encoded_sentence
    original_sentence.each_char do |element| #loops through the original sentence and takes each character and impliments element
      if cipher.include?(element)
        encoded_sentence << cipher[element] # if the cipher includes the element, the loop returns the encoded_sentence including the cipher.
      elsif element == ' '
        encoded_sentence << spaces.sample # if the element is a space, the encoded_sentence includes the space.
      else 
        encoded_sentence << element #otherwise the encoded sentence just includes the element.
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing?
  # Its turning the alphabet into an array.
# 2. How does the rotate method work? What does it work on?
  # The rotate method rotates the elements into the array to create a new array
# 3. What is `each_char` doing?
  # The each_char is looping through the characters in the original sentence to implement the element.
# 4. What does `sample` do?
  # sample takes an element from the encoded_sentence array
# 5. Are there any other methods you want to understand better?
  # I somewhat understand the .each_char method because I used it in the commas challenge, but I still don't feel like I fully understand it.
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
  # Our refractored solution was extremely complicated, I much prefer this solution because I feel each line of code is pretty easy to understand. 
# 7. Is this good code? What makes it good? What makes it bad?
  #I like that this code is organized and easy to decifer what is going on. There are some more complicated methods that I probably would avoid using, because
  #I'm not comfortable with them yet, but they do seem to do the trick.


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
=begin
This was a very straight forward challenge. I liked being exposed to these new methods and getting a 
chance to reseach what they do and how to use them. I'm excited to try them out in my challenges next week.
  I didn't have any trouble with this challenge, except that once I knew what each method did, it was a 
  little difficult trying to figure out what they did when they were all put together, such as the zip and rotate methed.
=end

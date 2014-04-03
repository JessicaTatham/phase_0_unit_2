# U2.W4: Cipher Challenge


# I worked on this challenge [by myself, with: ].
 # Lasse Sviland and Jessica Tatham


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # code is separating each letter and making them lowercase so the cipher can read it.
  decoded_sentence = []    # creating a new array.
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   # At our skill level now, using a hash is probably the best option, but another option could be 
            "h" => "d",  # since there is a gap of 4 between each letter you can make a array that will store the alphabet then
            "i" => "e",  # somehow count back 4 letters. 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # #each is a looping method that loops through a selects each piece of the array to run through the code.
    found_match = false  # Makes the code ignore any symbol that isn't in the cipher.
    cipher.each_key do |y| # The #each_key is looping through each of the key values in the cipher.
      if x == y  # This is comparing the input (x) and the cipher (y) to see if your input can be found in the cipher. If it can be, the code will ciper your messege and not need to run through the rest of the code. 
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # The break will stop the rest of the code from running if your if statement returns true.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #this is checking your input for other symbols.
        decoded_sentence << " " #if one of these symbols is in your code, it returns a space instead.
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # This checks if your input is a number and will return the same number.
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # This checks if nothing you input can match the cipher, symbols or numbers, than the code will just return your input.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("") #This joins the output into one string.
 
  if decoded_sentence.match(/\d+/) #The d+ is looking for numbers. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #Will take any number in your code and will divide it by 100. 
  end  
  return decoded_sentence #This is returning the final decoded sentence.         
end

# Your Refactored Solution

def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = []    
  cipher = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

  input.each do |x|
  found_match = false
    number = 0
    cipher.each do |y|
      if x == y
      #  puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[number-4]
        found_match = true
        break
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" 
        decoded_sentence << " "
        found_match = true
        break
      end
      number += 1
    end
    if not found_match
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
  if decoded_sentence.match(/\d+/) 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 }  
  end  
  return decoded_sentence         


end

# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection


#What parts of your strategy worked? What problems did you face?
  # We didn't take on a driver/navigator method to complete this challenge because this was a bit of a different type of challenge. I think maybe doing driver/nav would have been a good idea because I feel like I left the 
  # challenge feeling a little confused about some of the code, which I think could have been prevented with the drive/nave method.

#What questions did you have while coding? What resources did you find to help you answer them?
  # We had a lot of trouble putting together a refractored solution that doesn't use the hash system. There just seemed to be a lot of small issues that stopped our code from running correctly.

#What concepts are you having trouble with, or did you just figure something out? If so, what?
  #I understand the driver code really well. I think my biggest problem seems to be that when I pair with someone, they seem to runaway with the code and I can't seem to keep up. My way of thinking through the 
  # the code seems to be really simplistic, so when my partner goes complicated with something, just to test it out, they completely overwhelm me. This can be fixed with good communication, which is sometimes hard with
  # language barriers and being on skype.

#Did you learn any new skills or tricks?
  # I feel much more confident about the driver codes now.

#How confident are you with each of the learning objectives?
  # Somewhat confident

#Which parts of the challenge did you enjoy?
  #I enjoyed going through the code line by line and commenting what the code is doing. Normally, I don't take the time to do this, and I think its extremely helpful.

#Which parts of the challenge did you find tedious?
  # I was kind of lost as to what my partner was doing a lot of the time, which was really frustrating. In the end, I understand what the code does and why he put it there, but I just couldn't keep up to his quick programming.

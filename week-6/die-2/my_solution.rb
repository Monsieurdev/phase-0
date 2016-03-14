# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# It takes an array of strings.
# Output:
# It should randomnly return one of these strings.
# Steps:
# I am going to sart it out by creating a die class.
# And put up a method that set up the sides and the label.
# Inside this method, I will make the program prompt an error if an empty arry is passed.
# I will implement another method that will return the number of sides.
# And again a final method that will return a random string form the list of input strings.


# Initial Solution

# class Die
#   def initialize(labels)
#   	raise ArgumentError.new('The array is empty') if labels.size == 0
#   	@labels = labels
#   end

#   def sides
#     @labels.size
#   end

#   def roll
#   	@labels.sample
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
  	raise ArgumentError if labels.empty?
  	@labels = labels
  end

  def sides
    @labels.size
  end

  def roll
  	@labels.sample
  end
end




# Reflection
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# In the first die class we are dealing with integers while in this one we are working with strings, with numbers rand methods is usefull but with strings we have to 
# do it another way.

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# You can method change code easily with other methods, I others words you can make objects have different behiaviors.

# What new methods did you learn when working on this challenge, if any?
# I didn't learned about any new method. I had already learned about the sample method last week.

# What concepts about classes were you able to solidify in this challenge?
# As previously mentioned, you can have objects that works differently, or similarly.
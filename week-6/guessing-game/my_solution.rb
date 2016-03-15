
# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# And integer.
# Output:
# Return a symbol 
# Steps:
# firt, I will make a class called Guessing Game.
# Then I will set the class up take a number.
# Next, I am going to define a method called guess takes a number as input.
# This method should return high if the number is larger than the answer, 
# correct if the anser is right, and low if it is lower than the answer.
# I will define another method called solved, it returns true if the last 
# guess was correct and false if not.

# Initial Solution

# class GuessingGame


#   def initialize(answer)
#     @answer = answer
#     @guess = nil
#   end

#   def guess(number)
#     if number > @answer
#       @guess = :high
#     elsif 
#       number == @answer
#       @guess = :correct
#     else
#       @guess = :low
#     end
#   end
#     def solved?
#     	@guess == :correct
#     end
# end





# Refactored Solution
class GuessingGame
  def initialize(answer)
    @answer = answer
    @guess = nil
  end

  def guess(number)
    @guess = :high if number > @answer
    @guess = :correct if number == @answer
    @guess = :low if number < @answer
    @guess 
  end
    
    def solved?
    	@guess == :correct
    end
end



# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# The example I can think of is let's say Apple is a class, and the iphones are objects, and an iphone charger is the
# instance variable, obviously a charger don't hold data, but you get the point, you could use that charger with any iphone
# but you won't be able to use it on a product that is not an apple's. there you' re outise the class.
# When should you use instance variables? What do they do for you?
# You can use instance varibles to pass information between methods, they hold a values, so you can use inside any method in class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# You can use flow control to check to compare outcomes with if, eslif, esles statements. I didn't have any trouble with it
# in this challenge.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#Because symbols are unique, one you declare a symbol somewhere, unless strings they never change, they are 
# useful because their they allow the memory to save space.

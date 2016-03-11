# Die Class 1: Numeric

# I worked on this challenge [by myself]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# it will take the sides of die 
# Output:
# return a random number
# Steps:
# I will create a die class this would be my blueprint for creating future dies.
# Next, I will set up the sides the die.
# Then I am going to create a container that will contain the value of the side.
# I will create a mechanism that will retunr a random number from one to six.
# And finally, I will create my first die using the die blueprint.


# 1. Initial Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
    	raise ArgumentError.new("Side should not be less than 1")
    end
  end
  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end



# 3. Refactored Solution
class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError if @sides < 1
  end
  def sides
    @sides
  end

  def roll
    rand(1..@sides)
  end
end


# 4. Reflection
# What is an ArgumentError and why would you use one?
# It returns an error message if a condition is not met.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# The new method I implemented here was the rand method, I was able to return random number from a given range.

# What is a Ruby class?
# A ruby class is like a blueprint for object. or a ruby class is used to create objects, those are also called
# instance of that class

# Why would you use a Ruby class?
# You can use a class to create objects that can have same or different behaviors.

# What is the difference between a local variable and an instance variable?
# A local variable is only accessible within the scope of a method while an instance variable can
# be accessed anywhere in the class.

# Where can an instance variable be used?
# An instance variable can be used inside any method of a class.

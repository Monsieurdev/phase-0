# Pad an Array

# I worked on this challenge [by myself, with: benjamin flores ]

# I spent [3] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# Array, minimum size, padding (value=nil)
# What is the output? (i.e. What should the code return?)
#A new array with the padding up to the minimum size
# What are the steps needed to solve the problem?
#define pad!
#destructively /(not destructively) map the array, and then assign variable n for array
#Crete if statement, where we get the size of the aray and if it's smaller than the minimum size,
#create an until, until size of array is equal to the minimum size, we will push the value into the array
#close the code blocks, and retun the array

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
	array.map! {|n| n}
	  if array.size < min_size 
		until array.size == min_size
			array.push(value)
		end
	  end
	array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each {|n| new_array << n}
	if new_array.size < min_size 
		until new_array.size == min_size
			new_array.push(value)
		end
	end
	new_array
end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
	  if array.size < min_size 
		until array.size == min_size
			array.push(value)
		end
	  end
	array
end

def pad(array, min_size, value = nil) #non-destructive
new_array = []
  array.each {|n| new_array << n}
	if new_array.size < min_size 
		until new_array.size == min_size
			new_array.push(value)
		end
	end
	new_array
end


# 4. Reflection
# Were you successful in breaking the problem down into small steps?
# yes we were able to break down into small steps while we were pseudocoding.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
# Yes luckily we didn't have any difficulty translating like we did with the other exercise.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Yes they were successful because we implemented everything from our research were able to apply them accordingly.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
# We removed some unecessary lines.

# How readable is your solution? Did you and your pair choose descriptive variable names?
# It's very basic with no complex syntax, and we like to use descriptive variable because it makes it easier to understand the code.

# What is the difference between destructive and non-destructive methods in your own words?
# Desctructive methods change the original data while non-destructive methods create new data.

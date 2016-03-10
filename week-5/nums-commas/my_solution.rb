# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# The input is going to be positive numbers.

# What is the output? (i.e. What should the code return?)
# The code should return the numbers as a string.

# What are the steps needed to solve the problem?
# First, i will create a method that will receive a number
# or a set of numbers, next I will try to convert the number
#into a string and make it a list if necessary.
# in addition I will make an empty container that
# will have the numbers back in string format
# then I am going t expose the first condition 
# and I will use a proper iteration way to manipulate,
# compare, and control the outcomes in order to be able 
# to separate the numbers with a comma, if the test is 
# successful, I will then repeat this same process with 
# the other condition as well until all tests past


# 1. Initial Solution
def separate_comma(number)
	return number.to_s if number < 1000
	arr_string = number.to_s.split("")
	new_string = ""
	if number >= 1000 && number <= 9999
		arr_string.map! do |n|
			if arr_string.index(n) == 0
				new_string << n + ","
			else
				new_string << n
			end
		end
	elsif number >= 10000 && number <= 99999
		arr_string.map! do |n|
			if arr_string.index(n) == 1
				new_string << n + ","
			else
				new_string << n
			end
		end
	elsif number >= 100000 && number <= 999999
		arr_string.map! do |n|
			if arr_string.index(n) == 2
				new_string << n + ","
			else
				new_string << n
			end
		end
	elsif number >= 1000000 && number <= 9999999
		arr_string.map! do |n|
			if arr_string.index(n) == 0 || arr_string.index(n) == 3
				new_string << n + ","
			else
				new_string << n
			end
		end	
	elsif number >= 10000000 && number <= 99999999
		arr_string.map! do |n|
			if arr_string.index(n) == 1 || arr_string.index(n) == 4
				new_string << n + ","
			else
				new_string << n
			end
		end
	end
	new_string	
end


# 2. Refactored Solution
def separate_comma(number)
	return number.to_s if number < 1000
	arr_string = number.to_s
	if number >= 1000 && number <= 9999
		arr_string.insert(1, ',')
	elsif number >= 10000 && number <= 99999
		arr_string.insert(2, ',')
	elsif number >= 100000 && number <= 999999
		arr_string.insert(3, ',')
	elsif number >= 1000000 && number <= 9999999
		arr_string.insert(1, ',')
		arr_string.insert(5, ',')
	elsif number >= 10000000 && number <= 99999999
		arr_string.insert(2, ',')
		arr_string.insert(6, ',')
	end
	arr_string
end



# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# I tried to If should go with an array of strings or just string, as you can see in the initial
# solution I converted the number into an array of strings, so in the refaction I found out that was
# necessary, I just changed to a string.

# Was your pseudocode effective in helping you build a successful initial solution?
# It helped me the start of the challenge, I knew where to start, and it also helped me with the data structure.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I used the insert method when refactoring, using Ruby Doc made me aware of many new methods, sometimes it can take a while trying
# to find something but at the end it's rewarding, the method I found turn my code into fewer lines and more readable, and it looks nicer.

# How did you initially iterate through the data structure?
# I iterated with a destructive method "map!" to be able to access the elements.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# Yes, it is definitely more readable because my initial solution my be difficult to read for someone new in coding
# the refactored solution offers much readable code with fewer lines.

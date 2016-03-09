
# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with:Benjamin Flores ]

# I spent [3] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# takes an array of numbers or strings
# What is the output? (i.e. What should the code return?)
# object with the highest frequency
# What are the steps needed to solve the problem?
# declare varibles and set them to empty arrays
# map the array to find retrieve the number of frequencies 
# choose the maximum frequency and push to the variable
# iterate the a second time and compare the frequencies to maximum frequencies
# push the maximum frequencies inside a final array
# return the final array

# 1. Initial Solution
def mode(array)
final_array = []
max_count = []
array.map do |r| 
	max_count << array.count(r)
	end
	max_num = max_count.max
array.map do |m|
		if array.count(m) == max_num
    	final_array << m
		end
	end
	final_array.uniq

end



# 3. Refactored Solution

def mode(array)
final_array = []
max_count = []
array.map do |r| 
	max_count << array.count(r)
	end
	max_num = max_count.max
array.map do |m|
		if array.count(m) == max_num
    	final_array << m
		end
	end
	final_array.uniq

end


# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# We decided to combine iterations and control flow to come up with a solution

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
# This time it was much easier as we both reviewed how to pseudocode. 

# What issues/successes did you run into when translating your pseudocode to code?
# We had trouble getting maximum frequencies but with the help of ruby doc we were able to succeed.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We used the map method to iterate, I think was simpler than many other ones I saw online. So I decided to keep the same solution for now until I find a better one.

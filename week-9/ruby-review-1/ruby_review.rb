
# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
#The method will take an list of numbers.
# It will return the multiple of 3 with 'fizz', multiple of 5 with 'buzz', and multiple of
# of both 3 and 5 with 'fizzbuzz'
# EACH
	# iterate through each element in the list.
	# IF
		# the remainder of the division of the element by 3 equal zero, return 'fizz'
	# ELSIF
		# the remainder of the division of the element by 5 equal zero, return 'buzz'
	# ELSE
		# # the remainder of the division of the element by 3 and 5 equal zero, return 'fizzbuzz'

# Initial Solution

# def super_fizzbuzz(array)
# 	array.map! do |n|
# 		if n % 3 == 0 && n % 5 == 0
# 		 'FizzBuzz'
# 		elsif n % 5 == 0 
# 		 'Buzz'
# 		elsif n % 3 == 0
# 		 'Fizz'
# 		else 
# 		  n
# 		end				
# 	end
# 	array
# end



# Refactored Solution
def super_fizzbuzz(array)
	array.map! do |n|
		if n % 3 == 0 && n % 5 == 0
		 'FizzBuzz'
		elsif n % 5 == 0 
		 'Buzz'
		elsif n % 3 == 0
		 'Fizz'
		else 
		  n
		end				
	end
	array
end






# Reflection

# What concepts did you review in this challenge?
# It allowed me to review the concepts on arrays and conditional statements.

# What is still confusing to you about Ruby?
# I found nothing confusing about this challenge, I think I have a decent understanding of everything I 
# have learned so far.

# What are you going to study to get more prepared for Phase 1?
# I wish to review more javaScript, and learn about new ruby concepts.
# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#The error is occuring in the errors.rb file.
#
# 2. What is the line number where the error occurs?
#The errors occurs on line 171.
# 3. What is the type of error message?
#This is a syntax error.
# 4. What additional information does the interpreter provide about this type of error?
#The interpreter is expection the keyword end.
# 5. Where is the error in the code?
#The interpreter was expectiong the keyword end after the last input.
# 6. Why did the interpreter give you this error?
#Although the interpreter is telling us that the error is on line 171, however it's on line 15 because there is no end keyword to close the while loop.
#And the "end" that was intend to close the method now becomes the part of the while loop. as result the interpreter will think we never closed the method wich explains 
#it says "expection keyword end" .


# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
#The error occurs on line 39.
# 2. What is the type of error message?
#This is a main error. 
# 3. What additional information does the interpreter provide about this type of error?
#The interpreter says we have an undefined local variable.
# 4. Where is the error in the code?
#The error is at south_park wich is placed between single quotes.
# 5. Why did the interpreter give you this error?
#This happened because, we have a local variable here that has not been assigned any varialbe. Ruby doesn't allow this type of syntax. At least 
#we will need to use an equal sing after the name and give it "nil" so ruby so can understand it.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
#The error occurs on line 55.
# 2. What is the type of error message?
#This is a main error.
# 3. What additional information does the interpreter provide about this type of error?
#The interpreter says undefined method.
# 4. Where is the error in the code?
#The error is at 'cartman'
# 5. Why did the interpreter give you this error?
#This method is missing the keyword "def" which is nedeed to define a method.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#The error occurs on line 70.
# 2. What is the type of error message?
#This is an argument error.
# 3. What additional information does the interpreter provide about this type of error?
#The interpreter says 'wrong number of arguments'
# 4. Where is the error in the code?
#The error is located at the method 'cartmans_phrase'.
# 5. Why did the interpreter give you this error?
#When the interpreter says (1 for 0), it means and argument was expected and we gave none. 
#when we try to call the method with an arguments it gives us this kind of error because we didn't initialize the method with any argument.

# --- error -------------------------------------------------------

#

# 1. What is the line number where the error occurs?
#The error occurs on line 90.
# 2. What is the type of error message?
#This is an argument error.
# 3. What additional information does the interpreter provide about this type of error?
#The interpreter says 'wrong number of arguments'.
# 4. Where is the error in the code?
#The error is in the cartman_says method.
# 5. Why did the interpreter give you this error?
#This errors happens because no argument was expected, and we gave one. (0 for 1)
#the left number in the parentheses is the number of argument expected and the number on the right is the argument we gave.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#The error occurs on line 108.
# 2. What is the type of error message?
#This is an argument error.
# 3. What additional information does the interpreter provide about this type of error?
#The interpreter says 'wrong number of arguments'.
# 4. Where is the error in the code?
#The error is in the cartman_lie method.
# 5. Why did the interpreter give you this error?
#This error occurs because only on argument was expected and we gave the method two arguments.

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#The error occurs on line 127.
# 2. What is the type of error message?
#This is a 'TypError' error.
# 3. What additional information does the interpreter provide about this type of error?
#The interpreter says String can't be coerced into fixnum.
# 4. Where is the error in the code?
#the error points to line 127.
# 5. Why did the interpreter give you this error?
#We have this because in ruby, you can multiply a string by an integer and not the other way around. the correct way would be "Respect my authority" * 5

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#The error occurs on line 142.
# 2. What is the type of error message?
#This is a 'ZerodivisionError' error.
# 3. What additional information does the interpreter provide about this type of error?
#The interpreter says there is division by 0.
# 4. Where is the error in the code?
#The error is on line 142.
# 5. Why did the interpreter give you this error?
#This error happens whenver you try to divide by 0. Ruby doesn't do such computer because you can't divide something by 0.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#The error occurs on line 158.
# 2. What is the type of error message?
#this is a 'LoadError' error.
# 3. What additional information does the interpreter provide about this type of error?
#The interperter says 'cannot load such file'
# 4. Where is the error in the code?
#The error is at cartman_essay.md
# 5. Why did the interpreter give you this error?
#We have this type of error because require we are tryind to load a file that has not a ruby extension(rb). the file has a markdown extension
#which ruby doesn't understand.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
#The first erro was the most difficult but after I looked at it couple of times I was able to see what was wrong.

# How did you figure out what the issue with the error was?
#Running them trough the terminal and applying my ruby knowledge helped me figured out the issues.

# Were you able to determine why each error message happened based on the code? 
#Yes, I think I was able to why each error happened.

# When you encounter errors in your future code, what process will you follow to help you debug?
# I will try find the while where the error occurs, identity the type of error, what part of the line the issue is. and solve them by applying correct Ruby syntax.

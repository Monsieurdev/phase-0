puts "What's your Name?"
name = gets.chomp
puts "What's your middle Name"
middle = gets.chomp
puts "What's your Last Name"
last_name = gets.chomp
puts "Hello #{name} #{middle} #{last_name} how are you?"


puts "What's your favorite number?"
number = gets.chomp
new_number = number.to_i
new_number += 1
puts "#{new_number} is a bigger and better number"


# How do you define a local variable?
# A local varibale is defined inside a method, if you try to define it outside of the scope of that method you will get and error
 
# How do you define a method?
# you start with the word "def" followed by the name of the method and closed with and "end", It might have parameters or not.

# What is the difference between a local variable and a method?
# A locial is a place holder for values while a method is the action performed on objects. 

# How do you run a ruby program from the command line?
#To run a ruby programm, you type ruby followed by the name of the ruby file. for exmaple, ruby file-name.rb

# How do you run an RSpec file from the command line?
# this is done by type rspec followed by the file name, for example, rspec file-name_spec.rb

# What was confusing about this material? What made sense?
#I think everything was clear. As I read the book everything made sense. It's very interesting to see how things work when practicing.

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
# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself, with: ].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# ASSERT METHOD
	# will raise an error if no blodk is YIELD
# a variable with the value of 'byttysue'
# first assert statement that checks the variable condition.
# second assert statement that checks the variable condition.
# When the code runs we get an error because nothing is yield. 


# 3. Copy your selected challenge here


def do_something(arg_1,arg_2,arg_3)
end


# 4. Convert your driver test code from that challenge into Assert Statements


# require_relative "my_solution"

# describe 'do_something' do
#   it 'is defined as a method' do
#     expect(defined?(do_something)).to eq 'method'
#   end
#   it 'should accept exactly three parameters passed to the method' do
#     expect(method(:do_something).arity).to eq 3
#   end
# end
def assert_empty(actual,message)
  puts message
  puts defined?(do_something) == 'method'
end
def assert_arg(actual,message)
	puts message
    puts method(:do_something).arity == 3
	
end

assert_empty(do_something('a','b','c'),"it is defined as a method")
assert_arg(do_something('a','b','c'),"it should accept exactly three parameters")




# 5. Reflection
# What concepts did you review or learn in this challenge?
# I learned the assert concept and I was introduced to Rspec and Test driven developement.

# What is still confusing to you about Ruby?
# I found nothing confusing so far, but I would need more practice to get comfortable with some concepts.

# What are you going to study to get more prepared for Phase 1?
# I am going to study more Ruby review modules to get ready for Phase 1.































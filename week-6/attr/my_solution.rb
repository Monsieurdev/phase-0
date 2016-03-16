#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [1] hours on this challenge.

# Pseudocode

# Input:
# will take my name 
# Output:
# and display it with a greetings
# Steps:
# I will initialize my name with the name class.
# And creat an instance of the name class in the greetings class.
# and finally display the the name with the greeting.

class NameData
	attr_reader :name
	def initialize
		@name = "Mohamed"
	end
end


class Greetings
	def initialize
		@my_name = NameData.new
	end

	def hello
		 puts "Hello #{@my_name.name}! How wonderful to see you today."
	end
end
greet = Greetings.new
greet.hello


# Reflection
# What are these methods doing?
# They are reading and writting values of instance variables, in other words they are getter and setter methods.

# How are they modifying or returning the value of instance variables?
# They are changing the through the setter method "def change =(value)".

# What changed between the last release and this release?
# Now the code is using an attr_reader to read the values so there is no need to define a getter method for that value.

# What was replaced?
# what_is_age was replaced by attr_reader :age.

# Is this code simpler than the last?
# Yes it is.

# What changed between the last release and this release?
# Now the code is using an att_writer to write to change values so there is no need to define a setter method for that value.

# What was replaced?
# Changed_age was replaced by attr_writer :age

# Is this code simpler than the last?
# Yes, it's cleaner.

# What is a reader method?
# A reader method read the value of an instance.

# What is a writer method?
# A writer method makes it possible to change the value of an instance.

# What do the attr methods do for you?
# They read an write values of instances.

# Should you always use an accessor to cover your bases? Why or why not?
# Yes, because it makes the code cleaner and simpler.

# What is confusing to you about these methods?
# I found nothing confusing about these methods.

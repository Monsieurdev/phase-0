# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  return source.partition {|x| x.is_a? Integer}
end

def my_hash_splitting_method(source, age)
  return source.partition {|k ,v| v <= 4}
end

# Identify and describe the Ruby method(s) you implemented.
#I used the method "partition" which creates two arrays and sort the two
# according the code block.
#I also used the method "is_a?" which verify an object type and return a boolean
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# I implemented the the partition method to create two arrays, the challenge output was 
#supposed to be numbers in the first array and all the remaining element in the other one,
#so to be able to do this, after using the partition method, I made the code block make the first 
#array only integers by implement the is_a? method like this "x.is_a?" which means if x is an 
# integer return true otherwise return false. so in short, my code block says give me two arrays,
# the first should contains integers and the other one the rest of the elements.


# Release 3: Reflect!
# I learned about new methods that I had never seen before. It also 
# solidified my knowledge on how to use and convert a code block, and when I tried
# to explain to others I got even a better understanding of the methods since I  
# researched to make sure I was telling the right things.
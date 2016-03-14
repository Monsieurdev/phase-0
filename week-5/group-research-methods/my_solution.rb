# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  new_array = source.select do |element|
    element.to_s.include? thing_to_find
  end
  return new_array
end

def my_hash_finding_method(source, thing_to_find)
  new_array = []
  source.map do |k, v|
    if v == thing_to_find
      new_array << k
    end
  end
  return new_array
end

# Identify and describe the Ruby method(s) you implemented.
# I used the select method which returns an array containing all elements of enum for which teh given block returns are true value.
# I also used the include? method which returns true if any member of enum equals the object, in this case thing_to_find.
# I also used map method which goes through each item in the object and alters the original value.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# Explaining the methods I used reinforced my understanding on what they do. 
# Its one thing to be able to find the method and use it. 
# Its another to have to actually explain what it does and show how it works.


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
  source.sort { |x, y| x.to_s <=> y.to_s }
end

def my_hash_sorting_method(source)
  source.sort_by { |k, v| v }
end

# Identify and describe the Ruby method(s) you implemented.
#   I used the sort method to sort the values of an array in ascending 
#   (alphabetical) order. The method itself is straightforward when you
#   only have strings or only have integers:
#
#     a = [24, 9, 3, 14, 7]
#     a.sort # => [3, 7, 9, 14, 24]
#   
#     b = ["Jack", "Amanda", "Brandon", "Kurzweil"]
#     b.sort # => ["Amanda", "Brandon", "Jack", "Kurzweil"]
#
#   You can use sort without passing any block, but what is actually happening
#   by default is this:
#   
#     a.sort { |x, y| x <=> y }
#
#   You first need to understand the <=> operator. Here is a quote from
#   http://www.tutorialspoint.com/ruby/ruby_operators.htm

#     <=> Combined comparison operator
#     Returns 0 if first operand equals second, 
#     1 if first operand is greater than the second and 
#     -1 if first operand is less than the second
#
#   To sort in descending order, you just need swap x with y:
#
#     a.sort { |x, y| y <=> x }
#
#   What I did to sort an array with both Strings and Integers was just assume
#   everything was a string, included the integers. So I just did this:
#
#     source.sort { |x, y| x.to_s <=> y.to_s }
#
#   That way, even if I was comparing an integer with a string, it would force
#   that integer to be treated as a string and so the sorting would not give
#   any errors that integers could not be compared with strings.
#
#   Now, to sort a hash by its value (in this case being the age), I just used
#   the sort_by method:
#
#     source.sort_by { |k, v| v }
#
#   The block parameters are k (the key) and v (the corresponding value).
#   It is very intuitive: I just said I want to sort by value.
#
#   Both sort and sort_by are part of the Enumerable module, which is in turn
#   included in both the Array and Hash class. For more information, see
#   http://ruby-doc.org/core-2.3.0/Enumerable.html#method-i-sort
#
#   The way I was able to find a solution was also mostly due to trial-and-error,
#   trying the methods out in irb and seeing the outcome. Just looking at the
#   documentation was not enough -- I needed to try it out for myself to 
#   understand what the methods actually did.




# Person 4
def my_array_deletion_method!(source, thing_to_delete)
   source.each_with_index { |word, idx| if word.to_s.include?(thing_to_delete.to_s); source.delete_at(idx) end}
   p source
end


def my_hash_deletion_method!(source, thing_to_delete)
  source.tap { |dog| dog.delete(thing_to_delete) }
end

# Identify and describe the Ruby method(s) you implemented.

# On the array I used .each_with_index, an Enumerable sorting method to iterate through it.
# I then used the array method .include? to compare the thing to delete. I also used .to_s to convert both the word and thing_to delete_ into readable strings.
# If found, I used .delete_at to delete the index within the array that the word existed. I set (idx) in the block so when the method recognizes the word or letter, it will remove it's index positioning in the array.


# After failure with the .delete_if method, I decided to further my search and found the .tap method. It taps into the object using a block and returns the object itself after the performed function. Pretty cool!
# In the block I set a key and I used the simple .delete method to remove the thing to find from the hash. Removing the key will also in this case remove the value.

#


# Person 5
def my_array_splitting_method(source)
   source.partition {|x| x.is_a? Integer}
end

def my_hash_splitting_method(source, age)
   source.partition {|k ,v| v <= 4}
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
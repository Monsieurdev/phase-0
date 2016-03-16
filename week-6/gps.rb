
# Your Names
# 1)Mohamed
# 2)Denny

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.
def serving_size_calc(item_to_make, num_of_ingredients)
  $library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  
  raise ArgumentError.new("#{item_to_make} is not a valid input") unless $library[item_to_make]
  
  serving_size = $library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size


  case remaining_ingredients
  when 0
    return "Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Make #{num_of_ingredients / serving_size} of #{item_to_make}. Suggested baking items: #{suggested_item(remaining_ingredients)} "
  end
end


# Single responsibilty methods. 
def suggested_item(remaining_ingredients)
  list = ["pizza","cheesecake","flan"]
  "you can make some #{list.sample} with #{remaining_ingredients} leftover ingredients"
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)
#Reflection
# What did you learn about making code readable by working on this challenge?
# I learned that you can you can remove unecessary lines to make the code simple and readable, they is always some methods that can make the code readable.

# Did you learn any new methods? What did you learn about them?
# I didn't learn any new methods, but the challenge solidified the my knowledge about the methods I already knew.

# What did you learn about accessing data in hashes?
# You can access values in a hash by targeting their correspondings keys, and you can access the keys. with some methods. one example h.keys and h.key(value)

# What concepts were solidified when working through this challenge?
# I learned more about hashes, and it was nice to be introduced to the concept of single responsibility methods which I am excited about.

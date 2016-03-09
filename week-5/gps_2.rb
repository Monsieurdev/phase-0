# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: separate into sub strings
 # take the substrings and assign them to keys in the hash

 # [fill in any steps here]
 # set default quanity 

 # print the list to the console [can you use one of your other methods here?]
# output: print the list of groceries with their quantities in a hash
def create_list(string_of_items)
	groceries_list = Hash.new
	array_of_items = string_of_items.split
	array_of_items.each do |item|
		groceries_list[item] = nil
	end
	 groceries_list
end
$list = create_list("Carrots Apples Cereal Pizza")

# Method to add an item to a list
# input: item name and optional quantity
# steps: define a method that takes key/pair values that adds to the existing list of items.
# output: print the new list of items 
def add_item(item, quantity)
	$list[item] = quantity
	 $list 
end
add_item("peach", 45)
add_item("Lemonade", 2)
add_item("Tomatoes", 3)
add_item("Onions", 2)
add_item("Ice Cream", 2)

# Method to remove an item from the list
# input: take items names and removes from the listd
# steps: define a method that will remove the item in the list 
# output: and then we get the updated list.
def remove_item(item)
	$list.delete(item)
	 $list
end
remove_item("carrots")
remove_item("Lemonade")


# Method to update the quantity of an item
# input: use a key to update a value.
# steps: taking the existing hash pair
# and update his value 
# output: print the new list with the new value.
def update_q(item,quantity)
	 add_item(item,quantity)
end
update_q("peach",35)
update_q("Ice Cream",1)
# Method to print a list and make it look pretty
# input: the hash with items
# steps: print every method on a different line
# output: the final list looking pretty.
def print_list
	puts"This is my grocery list for the week:"
	 $list.each do |item, quantity|
		puts "#{item} : #{quantity}"
	end
end

print_list

# What did you learn about pseudocode from working on this challenge?
# I learned that is like the blue print for you solution and it has to be in plain english as much as possible.

# What are the tradeoffs of using Arrays and Hashes for this challenge?
# Arrays gives elements to hashes to uses as item and their description.

# What does a method return?
# A method return the output of a code block.

# What kind of things can you pass into methods as arguments?
# You can pass integers, strings, hashes, arrays etc.

# How can you pass information between methods?
# You can use on method within another method, a method can accept another method as argument, and you can also declare 
# a global variable and use it everywhere.

# What concepts were solidified in this challenge, and what concepts are still confusing?
# The use of hashes and arrays were solidified, and passing information between methods was confusing.



 
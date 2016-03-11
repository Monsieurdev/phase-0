list =["Aarthi Gurusami",
"Abid Ramay",
"Adam Zmudzinski",
"Alec Hendrickson",
"Alex Wen",
"AliciaBriceland",
"Allison paul",
"Andrey Slonski",	
"Anna Lansfjord",	
"Ben Sanecki",	
"Benjamin R Flores",	
"Buck Melton",	
"Caitlin Hoffman",	
"Carlos Gonzalez",	
"Chand Nirankari",	
"Ché Sanders",	
"Chris Henderson",	
"Christopher Lamkin",	
"Christyn Budzyna",	
"Dan Park",	
"David Ramirez",	
"David Walden",
"Ruo Yu Tao",	
"Bill Deng",	
"Denny Jovic",	
"Dexter Moran",	
"Diana Ozemebhoya Eromosele",	
"Dominick Lombardo",	
"Elan Kvitko",	
"Elizabeth Alexander",	
"Elizabeth Brown",	
"Ena Bekanovic",	
"Esther Leytush",	
"Evan Druce",	
"Frank Lam",	
"Gabriel Zurita",	
"Jack Thatcher",	
"Jason Milfred",	
"John Colella",	
"Jonathan Kaplan",	
"Kelson Adams",	
"Kristal Lam",
"Kunal Patel",
"Leland Meiners",	
"Liam Binell",	
"Lisa Buch",	
"Lisa Dannewitz",	
"Lyudmila Arinich",	
"Mohamed Monekata",	
"Parker Smathers",	
"Patrick DeWitte",	
"Renan Martins",	
"Riley Scheid",	
"Robin Soubry",
"Samantha Holmes",
"Scott Southard",	
"Shaun R Sweet",	
"Shin Wang",	
"Sibel Ergener",	
"Simon Thomas",	
"Talal Talhouk",	
"Ted Bogin",	
"Traci Fong",	
"Victoria Solorzano"]

 # Pseudocode:
 # The input is a group of people.
 # The output is groups of 4 or people or last 3 people.
 # I will do the following steps:
 # I going to create a method that will take one big list of people and name "people".
 # Then will initiate another list that will contain groups with people inside of of each group.
 # I will make each group has 5 people or last 3, I want the names unsorted.
 # I will then proceed to print each group with their corresponding names.
 def create_groups(names)
 	groups = ["Accountability Group 1","Accountability Group 2","Accountability Group 3","Accountability Group 4",
 		"Accountability Group 5","Accountability Group 6","Accountability Group 7","Accountability Group 8","Accountability Group 9",
 	"Accountability Group 10","Accountability Group 11","Accountability Group 12", "Accountability Group 13"]
 	list_names = names.shuffle
 	names_and_group = Hash.new{|hash, group| hash[group] = []}
 	groups.each do |group| 
 		names_and_group[group] = list_names.shift(5)
 	end
    names_and_group
 	names_and_group.each do |group, names| 
 		puts "#{group}:"
 		puts
 		puts names
 		puts
 	end
 end
create_groups(list)

# What was the most interesting and most difficult part of this challenge?
# Having people in a group was the most difficult because I was having repetitions before 
# I figured the correct way to do that.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
# Yes, I am really improving day by day, sometimes I have to different direction than my pseudocode,
# but at leat It helps you start somewhere.

# Was your approach for automating this task a good solution? What could have made it even better?
# I think I have done the solid basics my method will automatically create groups, I can 
# also makes it print groups in alphabetical orders but I chose not to, If I knew how to implement a user
# interface and a database, if would have been much better.

# What data structure did you decide to store the accountability groups in and why?
# I decided to go with hashes because you can have a key with multiple values which in my case would be
# groups and people.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# I learn to initialize a hash with a key that could take many values, it gave me the opportunity to review 
# many methods while was researching.

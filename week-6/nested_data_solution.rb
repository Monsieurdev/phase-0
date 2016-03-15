# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
 # array[4][1]
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

# hash[outer:][inner:["almost"][[3]]]]
# hash[outer:][inner:]["almost"][3]
# hash[outer:][inner:]["almost", 3]
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================


# nested_data[:array]["array"][:hash]
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]


p number_array.flatten.map! {|n| n + 5}


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]


# What are some general rules you can apply to nested arrays?
# You can access each element trough its index.

# What are some ways you can iterate over nested arrays?
# You can use enumerable methods to iterate over nested arrays, when you retrieve an element, you iterate over that element to access the
# sub-array.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
# Yes, I found the flatten method using Ruby Docs, that was awesome. It allowed to refactored my code in just one line.

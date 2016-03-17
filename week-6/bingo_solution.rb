# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # Make an empty hash, iterate through a list of letters, and make each element assigned to a number from one
  # to hundred

# Check the called column for the number called.
  #iterate trough the board to see if the number called is there

# If the number is in the column, replace with an 'x'
  # if there is a match I will then proceed to replace with an x

# Display a column to the console
  #Use the print method to print a column

# Display the board to the console (prettily)
  #Arranged the column so it is nice looking and friendly.

# Initial Solution

class BingoBoard
  attr_reader :bingo_board
  def initialize(board)
    @bingo_board = board
    @call_board = Hash.new 
    @letters = ['B','I','N','G','O']
  end
  def call
      @call_board[@letters.sample] = rand(1..100)
      @call_board
  end
  def check
    @bingo_board.each do |array|
      array.map! do |n|
        if array.index(n) == @letters.index(@call_board.keys.first) && n == @call_board.values.first
          ['X']
        else
          n
        end
      end
      array.flatten!
    end
  @bingo_board
  end
end

# Refactored Solution
class BingoBoard
  def initialize(board)
    @bingo_board = board
    @call_board = Hash.new 
    @letters = ['B','I','N','G','O']
  end
  def call
      puts
      @call_board[@letters.sample] = rand(1..100)
      puts "#{@call_board.keys.first}#{@call_board.values.first}"
      puts
  end
  def check
    @bingo_board.map do |sub_array|
      sub_array.map! do |number|
       sub_array.index(number) == @letters.index(@call_board.keys.first) && number == @call_board.values.first ? 'X' : number
      end
    end
    @bingo_board.each {|row| p row}
  end
end



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check

#Reflection
# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# Writing the pseudocode was easy because the instructions on how to do the challenge was pretty straightforward, my pseudocode is getting 
# getter and plan to rewatch the video again so I can solidify my knowledge.

# What are the benefits of using a class for this challenge?
# One of the benefits here is the ability to pass information between methods using instance varibales, another thing is 
# you have can create many games and change their behiavior if you wish to.

# How can you access coordinates in a nested array?
# One way is you can iterate over the main array and from there you could iterate over sub-arrays to retrieve
# elements usion enumerable methods .

# What methods did you use to access and modify the array?
# I used enumerable methods such each and map.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I learned about the "flatten" method, it turns a multi-dimesional array to one-dimensional array.

# How did you determine what should be an instance variable versus a local variable?
# Anything that is going to be used inside any method shoud be an instance varible, I don't think I have ever used a local 
# varible here.

# What do you feel is most improved in your refactored solution?
#The datat structed is better with fewer lines, I was able to remover some unecessary codes, also the display is impoved it is mcuh
# nicer looking.
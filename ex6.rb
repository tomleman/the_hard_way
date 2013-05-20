#Assigns text to X
x = "There are #{10} types of people."
#Assigns var 'binary' to binary
binary = "binary"
#Assigns var 'don't' to do_not
do_not = "don't"

#Assigns text to y and uses interpolators to take vars
y = "Those who know #{binary} and those who #{do_not}."

#puts x then y in separate lines
puts x
puts y

#Puts text and interpolates x and y into it
puts "I said: #{x}."
puts "I also said: '#{y}'."

#the joke was awful. This confirms it
hilarious = false
joke_evaluation = "Isn't that joke so funny?! #{hilarious}"

#puts joke_evaluation var
puts joke_evaluation

#Assigns strings to vars w and e
w = "This is the left side of..."
e = "a string with a right side."

#puts the output of w and e added together.
puts w + e 
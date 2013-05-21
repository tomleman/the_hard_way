#argument added when script is run
filename = ARGV.first
script = $0

#Takes filename from argument
puts "We're going to erase #{filename}."
#performs an interrupt and exits the script
puts "If you don't want that, hit Ctrl-C (^C)."
puts "If you do want that, hit RETURN."

#Questions input and drops down a line
print "?\n "
#Standard input is RETURN. Predefined in Ruby
STDIN.gets

puts "Opening the file..."
#Sets the target for input to the file in the argument. 'w' sets write permission
target = File.open(filename, 'w')

#Truncate shrinks the file size
puts "Truncating the file. Goodbye!"
target.truncate(target.size)

puts "I'm going to ask you for three lines."

#Individually asks for each line to be added to the text.
print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

#Writes each line to the file and drops down a line. Edited to use string formatting and escape sequences
#Add lines to array, and run escapes and formatting in string, using % to pass through to the array.
target.write ("%s\n%s\n%s\n" % [line1, line2, line3])

#Closes the file
puts "And finally, we close it."
target.close()
# Takes an input file as an argument
input_file = ARGV[0]

# Defines what is done when print_all is called
def print_all(f)
	puts f.read()
end

# Defines what is done when rewind is called
def rewind(f)
	f.seek(0, IO::SEEK_SET)
end

# Defines what is done when print_a_line is called
def print_a_line(line_count, f)
	puts "#{line_count} #{f.readline()}"
end

# Takes working file from the argument in Line 1
current_file = File.open(input_file)

puts "First let's print the whole file:"
puts # a blank line

# Runs print_all (Lines 5-7) on current_file (Line 20)
print_all(current_file)

puts "Now let's rewind, kind of like a tape."

# Runs rewind (Lines 10-12) on current_file (Line 20)
rewind(current_file)

puts "Let's print three lines:"

# Sets current_line to 1, then runs print_a_line (Lines 15-17), taking the current_line of the current_file
current_line = 1
print_a_line(current_line, current_file)

# Sets current_line (1) to current_line + 1 (2) i.e. Line 2, then runs print a line
current_line = current_line + 1
print_a_line(current_line, current_file)

#Takes the +1 from the previous call, so current_line is now 2. Uses +1 again to get to Line 3 and 
#runs print_a_line
current_line = current_line + 1
print_a_line(current_line, current_file)
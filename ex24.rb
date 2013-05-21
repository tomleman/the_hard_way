puts "Let's practice everything."
puts "You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs."

# Using document syntax to demonstrate escape sequences
poem = <<MULTI_LINE_STRING

\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.

MULTI_LINE_STRING

# Outputting the string inside the document syntax
puts "--------------"
puts poem
puts "--------------"

# Maths demo
five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

# Defining the method for secret formula
def secret_formula(started)
	jelly_beans = started * 500
	jars = jelly_beans / 1000
	crates = jars / 100
	return jelly_beans, jars, crates
end

# Adding the start point for the method
start_point = 10000
# Defining three variables for the method. Beans is new, but relates to jelly_beans 
# due to the order they're presented.
beans, jars, crates = secret_formula(start_point)

# Start point = 10000 (line 34)
puts "With a starting point of: #{start_point}"
# Variables declared in Line 37. Answers taken using the start_point and the sums in the method.
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

# Dividing the start_point by 10
start_point = start_point / 10

# Using string formatting to take the output from secret_formula and entering at %s (string), in order.
puts "We can also do it this way:"
puts "We'd have %s beans, %s jars, and %s crates." % secret_formula(start_point)
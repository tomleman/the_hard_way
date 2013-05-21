# Defines math functions (Lines 2 - 20)
def add(a, b)
	puts "ADDING #{a} + #{b}"
	a + b
end

def subtract(a, b)
	puts "SUBTRACTING #{a} - #{b}"
	a - b
end

def multiply(a, b)
	puts "MULTIPLYING #{a} * #{b}"
	a * b
end

def divide(a, b) 
	puts "DIVIDING #{a} / #{b}"
	a / b
end

puts "Let's do some math with just functions!"

# Assigns variables and values for A and B
age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)

# Interpolates from variables above, filling in answers using original methods.
puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"

# A puzzle for extra credit, type it in anyway.

puts "Here is a puzzle."

# Sums are nested. Start with the deepest i.e. iq / 2 = 25. Result of deepest sum becomes second int for next
# deepest i.e. 180 (weight) * 25 = 4500, then 74 (height) - 4500 = -4426, then the last is 
#35 (age) + -4426 = 4391. 
what = add(age, subtract(height, multiply(weight, divide(iq, 2))))

puts "That becomes: #{what}. Can you do it by hand?"
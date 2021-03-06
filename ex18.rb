#This one is like your scripts with argv
def puts_two(*args)
	arg1, arg2 = args
	puts "arg1: #{arg1}, arg: #{arg2}"
end

#Ok, that *args is actually pointless, we can just do this.
def puts_two_again(arg1, arg2)
	puts "arg1: #{arg1}, arg2: #{arg2}"
end

#This just takes one argument
def puts_one(arg1)
	puts "arg1: #{arg1}"
end

#This one takes no arguments
def puts_none()
	puts "I got nothing'."
end

puts_two("Tom","Leman")
puts_two_again("Tom","Leman")
puts_one("First!")
puts_none()
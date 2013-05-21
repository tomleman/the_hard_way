#Defines variables for function and groups under function name
def cheese_and_crackers(cheese_count, boxes_of_crackers)
	puts "You have #{cheese_count} cheeses!"
	puts "You have #{boxes_of_crackers} boxes of crackers!"	
	puts "Man that's enough for a party!"
	puts "Get a blanket."
	puts # a blank line
end

puts "We can just give the function numbers directly:"
#Calls function and sets numbers to variables
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our scripts:"
#Sets new variables...
amount_of_cheese = 10
amount_of_crackers = 50
#... and groups them under the original function name
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
#Sets amounts for variables and runs addition to get totals
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
#Takes the function and uses the newer variables and math for the totals 
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
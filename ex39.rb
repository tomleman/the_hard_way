# create a mapping of state to abbreviation
counties = {
	'Hampshire' => 'Hants',
	'Gloucestershire' => 'Glos',
	'Oxfordshire' => 'Oxon',
	'Lincolnshire' => 'Lincs',
	'East Sussex' => 'E Sussex'
}

# Create a basic set of states and some cities in them
cities = {
	'Hants' => 'Winchester',
	'E Sussex' => 'Brighton',
	'Oxon' => 'Oxford'
}

#add some more cities
cities['Lincs'] = 'Lincoln'
cities['Glos'] = 'Gloucester'

# puts out some cities
puts '-' * 10
puts "Hampshire has: ", cities['Hants']
puts "Oxfordshire has: ", cities['Oxon']

#puts some states
puts '-' * 10
puts "Hampshire's abbreviation is: ", counties['Hampshire']
puts "Lincolnshire's abbreviation is: ", counties['Lincolnshire']

# do it by using the state then cities dict
puts '-' * 10
puts "East Sussex has: ", cities[counties['East Sussex']]
puts "Gloucestershire has: ", cities[counties['Gloucestershire']]


# puts every state abbreviation
puts '-' * 10
for county, abbrev in counties
	puts "%s county is abbreviated %s" % [county, abbrev]
end

# puts every city in states
puts '-' * 10
for abbrev, city in cities
	puts "%s has the city %s" % [abbrev, city]
end

# Now do both at the same time
for county, abbrev in counties
	puts "%s county is abbreviated %s and has city %s" % [county, abbrev, cities[abbrev]]
end

puts '-' * 10
# If it's not there you get nil.
counties = county['Devon']

if not counties
	puts "Sorry, no Devon"
end

# get a city with a default value
city = cities['Dev'] || 'Does not exist'
puts "The city for the county 'Dev' is:" % city
def anagrams(words)
	# Defines result as a new array
	result = []
	# Iterates over each word in the initial array.
	words.each do |word|
	  # Splits the word down to individual letters.
	  split_word = word.split('').sort
	  # Defines the array for the matching words to go in
		anagrams = []
	  # Splits the next word in the array 
	  words.each do |another_word|
	  	#Splits that next word into it's letters and sorts alphabetically
	  	another_split_word = another_word.split('').sort	
	  	# compare with the others in the array.
	  	if split_word == another_split_word
	  		# Puts the result (another_word) into the array anagrams
	  		anagrams << another_word
	  	end
	  end
	  # If the letters in the word match, put the matching words in a new array.
	  	result << anagrams
	  # When it's run through all words, put all the new arrays into one array.
 	end	
 	# Sorts the results so it only shows unique elements in the results array.
 	result.uniq
end

puts anagrams(%w[stars mary rats tars army banana]).inspect



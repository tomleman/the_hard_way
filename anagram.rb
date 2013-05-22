words = %w[stars mary rats tars army banana]
res = {}

words.each do |word|
	key=word.split('').sort.join
	res[key] ||= []
	res[key] << word
end

p res.values

def anagrams(words)
  results = []
  words.each do |word|
    split_word = word.split('').sort
    anagrams = []
    words.each do |another_word|
      another_split_word = another_word.split('').sort    
      if split_word == another_split_word
        anagrams << another_word
      end
    end 
  results << anagrams
  end
  results.uniq

end 

puts anagrams(%w[stars mary army rats banana tars]).inspect
def substrings(word, arr)
  # check if strings from arr are substrings of word (one or more)
  
  words = word.downcase.split(' ')
  dict = Hash.new(0)

  words.each do |word|
    arr.each do |sub|
      if word.include? sub
        dict[sub] += 1
      end
    end
  end
  dict
end
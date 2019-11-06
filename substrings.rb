def substrings words, dictionary
  words = words.split(' ')
  words_in_dictionary = {}
  words.each do |word|
    found_words = find_words word, dictionary
    found_words.each do |w|
      if words_in_dictionary.include? w
        words_in_dictionary[w] += 1
      else
        words_in_dictionary[w] = 1
      end
    end
  end
words_in_dictionary
end
def find_words word,dictionary
  words_included = []
  i = 0
  a = 0
  while i < word.length
    while a < word.length
      substring = word[i..a].downcase
      if dictionary.include?(substring)
        words_included.push(substring)
      end
      a += 1
    end
    a = i + 1
    i += 1
  end
  words_included
end

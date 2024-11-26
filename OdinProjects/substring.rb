dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substring(string, dictionary)
  string.downcase.scan(/[a-zA-Z0-9]+/).each_with_object(Hash.new(0)) do |string_word, acc|
    dictionary.each do |word|
      acc[word] += 1 if string_word.include?(word)
    end
  end
end

puts substring('below', dictionary)
puts substring("Howdy partner, sit down! How's it going?", dictionary)

# My Implenmtation using google for regex pattern
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

# ChatGipity v1
# require 'set'
#
# dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
#
# def substrings(string, dictionary)
#   # Convert the dictionary to a set for quick lookups
#   dictionary_set = dictionary.to_set
#   result = Hash.new(0)
#
#   # Downcase and split the string into words
#   string.downcase.scan(/[a-zA-Z0-9]+/).each do |string_word|
#     # Check for substrings from the dictionary in the current word
#     dictionary_set.each do |word|
#       result[word] += 1 if string_word.include?(word)
#     end
#   end
#
#   result
# end
#
# # Testing
# puts substrings("Howdy partner, sit down! How's it going?", dictionary)
#
#
# ChatGipity v2
# def substrings(string, dictionary)
#   result = Hash.new(0)
#
#   # Combine all dictionary words into a regex pattern for efficient matching
#   pattern = Regexp.union(dictionary.map { |word| Regexp.escape(word) })
#
#   # Downcase the string and scan for matches
#   string.downcase.scan(pattern).each do |match|
#     result[match] += 1
#   end
#
#   result
# end

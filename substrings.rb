def substrings (input_text, words)
  input_array = input_text.downcase
  result = Hash.new(0)
  for word in words do
    result[word] = input_array.scan(word).length if input_array.include?(word)
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)

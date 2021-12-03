def substrings(phrase, dict)
  result = Hash.new(0)

  phrase.downcase!

  dict.each do |word|
    matches = phrase.scan(word).length
    result[word] = matches unless matches.zero?
  end

  puts result
end

dictionary = %w[below down go going horn how howdy it i low own part partner sit how]



substrings("Howdy partner, sit down! How's it going?", dictionary)

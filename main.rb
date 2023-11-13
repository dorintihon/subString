dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  words = {}

  dictionary.each do |word|

    words[word] = string.downcase.scan(word).length

  end

  p words.select { |key, value| value >= 1 }
end

substrings("Howdy partner, sit down! How's it going?", dictionary)

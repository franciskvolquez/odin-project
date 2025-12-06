#dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# Detects substrings in a string and counts them 
def substrings (word = "", dictionary = [""])

  hash = dictionary.to_h{|element| [element,0]}
  downcased_word = word.downcase

  hash.each do |k,v|
    hash[k]+= + downcased_word.scan(k.downcase).count
  end

  puts  hash.select{|k,v| v >0 }
end

#substrings("below", dictionary)
#substrings("Howdy partner, sit down! How's it going?", dictionary)

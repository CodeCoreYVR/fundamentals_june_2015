# Given an array of words, build a Hash where keys are words and values are
# the frequency of appearance of each word

# "hello there how are you, how are you doing"
#
# {"hello" => 1, "there" => "1", "you" => 2}

print "give me a sentence"
sentence = gets.chomp

frequency = {}             # this is empty hash that we can fill up
words     = sentence.split # this gives us an array of words

words.each do |word|
  # this is the case when the word doesn't already exist in the Hash
  if frequency[word] == nil
    frequency[word] = 1
  # this is the case when the word has already been added to the Hash
  else
    frequency[word] += 1
  end
end

print frequency


# Solution 2
print "give me a sentence"
sentence = gets.chomp

frequency = Hash.new(0)
words     = sentence.split

words.each {|word| frequency[word] += 1 }

print frequency

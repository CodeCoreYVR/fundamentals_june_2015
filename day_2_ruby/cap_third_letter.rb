# Write code that takes a sentence and then prints every
# 3rd letter capitalized

print "Give me a sentence: "
sentence = gets.chomp

# this will give me an array of letter from the entered sentence
letters = sentence.split("")

counter = 0

letters.each do |letter|
  counter += 1
  if counter % 3 == 0
    letter.capitalize!
  end
end

print letters.join

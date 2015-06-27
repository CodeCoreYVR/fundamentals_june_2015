# exercise: Write code that takes a sentence and then prints that sentence
#            with each word capitalized

# Steps:
# 1- Take an input from the user (String)
# 2- Turn the sentence (Sting) into an Array of words
# 3- Loop through the array and capitalize every element
# 4- Join the array elements together separated by spaces

# Step 1
print "Give me a sentence"
sentence = gets.chomp

# Step 2
results = sentence.split

# Step 3
results.each do |word|
  word.capitalize!
end

# Step 4
puts results.join(" ")

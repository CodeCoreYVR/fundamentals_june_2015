# Instantiating an empty array. You can also do: Array.new
result = []

print "Give me a word: "
word_1 = gets.chomp

print "Give me a second word: "
word_2 = gets.chomp

for i in 1..100
  if i % 15 == 0
    # we push to the result array "FIZZBUZZ"
    result << "#{word_1}#{word_2}"
  elsif i % 5 == 0
    result << word_2
  elsif i % 3 == 0
    result << word_1
  else
    result << i
  end
end

# using print is generally better for something like Arrays
# because it displays the full format
print result

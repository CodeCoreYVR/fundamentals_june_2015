# Make a loop that constantly ask the user for input
# break the loop when the user enters the word "quit"
# make up a string of all the words that the user enters
# After that is done:
# find out a way to know whether the word sequence is odd or even
# if it's even then make it upcased before joining to the string
result  = ""
counter = 1
# using while true will give us an infitie loop
while true
  print "Give me a word (type quit to exit): "
  input = gets.chomp
  # make sure that this is == and not = because we're
  # doing comparison in here.
  break if input == "quit"
  # if input == "quit"
  #   break
  # end
  if counter % 2 == 0
    input.upcase!
  end
  result = result + input
  counter += 1
end

puts result

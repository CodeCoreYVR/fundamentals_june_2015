print "Give me a number: "

number = gets.chomp.to_i

if number <= 100
  # the for loop will loop from `number` value to a 100
  # it sets every value to the `counter` variable
  for counter in number..100
    puts counter
  end
end

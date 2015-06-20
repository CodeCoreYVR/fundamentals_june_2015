for number in 1..100
  # we need to put this condition first because the other
  # ones include this condition which means we won't get
  # to it if we put the number % 5 == 0 or number % 3 == 0
  # first
  if number % 15 == 0
    puts "FIZZBUZZ"
  elsif number % 5 == 0
    puts "BUZZ"
  elsif number % 3 == 0
    puts "FIZZ"
  else
    puts number
  end
end

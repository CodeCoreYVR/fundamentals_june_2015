print "Give me a number: "

number = gets.chomp.to_i

if number > 100
  puts "Your number is very big"
elsif number > 10
  puts "Your number is big" 
else
  puts "Your number is small"
end

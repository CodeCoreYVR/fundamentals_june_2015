print "What year is your vehicle? "

number = gets.chomp.to_i

if number > 2014
  puts "New"
elsif number > 2000
  puts "Newish"
elsif number > 1990
  puts "Old"
else
  puts "Very old"
end

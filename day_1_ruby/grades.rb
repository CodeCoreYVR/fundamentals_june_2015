print "What is your score? "

score = gets.chomp.to_f

if score > 86
  puts "A"
elsif score > 74
  puts "B"
elsif score > 62
  puts "C"
elsif score > 50
  puts "D"
else
  puts "F"
end

my_hash = { "BC" => ["Vancouver", "Richmond"],  "AB" => ["Edmonton", "Calgary"]}

# looping through the hash. Cities will be an Array object that we can loop through
my_hash.each do |prov, cities|
  puts "#{prov}: #{cities.join(', ')}"
end

names = ["alex", "jim", "john", "Jennifer"]

names.map! {|name| name.capitalize.reverse }

puts names

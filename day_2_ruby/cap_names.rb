names     = ["alex", "jim", "john", "tony"]

cap_names = []

names.each do |name|
  # pushing the capitalized name to the cap_names array
  cap_names << name.capitalize
end

print cap_names

puts "What are your 5 favorite foods?"
foods = gets.chomp
favorite_foods = foods.split(", ")
p favorite_foods

favorite_foods.each do |food|
  puts "I love #{food}"
end

x = 1
favorite_foods.each do |food|
  puts "#{x}. #{food}"
  x += 1
end
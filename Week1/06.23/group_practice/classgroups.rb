puts "Enter the names of your classmates, separated by commas"
names = gets.chomp.split(", ")

x = 0
while x < names.length
  if (names.length - x) == 3
    puts "Group: #{names[x]} #{names[x+1]} #{names[x+2]}"
    x += 3
  else
    puts "Group: #{names[x]} #{names[x+1]}"
    x += 2
  end
end
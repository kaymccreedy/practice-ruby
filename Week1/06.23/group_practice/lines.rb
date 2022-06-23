numbers = [
  [1, 2, 3],
  [2, 2, 2],
  [3, 2, 1],
]

# lines = []
# x = 0
# while x < numbers.length
#   y = 0
#   line = []
#   while y < numbers[x].length
#     line << "*" * numbers[x][y]
#     y += 1
#   end
#   lines << line.join(" ")
#   x += 1
# end

# lines.each { |line| puts line}

lines = []
numbers.each do |line|
  store = []
  line.each do |number|
    store << "*" * number
  end
  lines << store.join(" ")
end

lines.each { |line| puts line}
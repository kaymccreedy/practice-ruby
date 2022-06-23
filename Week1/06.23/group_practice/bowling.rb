player1 = []
# player2 = []

def add_score(p1)
  puts "Throw 1:"
  throw1 = gets.chomp.to_i
  puts "Throw 2:"
  throw2 = gets.chomp.to_i
  p1 << [throw1, throw2]
end

add_score(player1)

p player1
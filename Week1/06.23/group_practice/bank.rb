bankinfo = []

x = 0
while x < 5
  puts "Enter a first name, last name, and email"
  info = gets.chomp
  info = info.split(", ")
  if info[-1].include?("@") && info[-1].end_with?(".com")
    hash = { first_name: "#{info[0]}", last_name: "#{info[1]}", email: "#{info[2]}" }
    arr = []
    10.times do
      arr << rand(0..9)
    end
    num = arr.join
    hash[:acct_no] = num
    bankinfo << hash
    x += 1
  else
    puts "Email address must include '@' and end with '.com'"
  end
end

bankinfo.each do |person|
  puts "FIRST NAME: #{person[:first_name]}"
  puts "LAST NAME: #{person[:last_name]}"
  puts "EMAIL: #{person[:email]}"
  puts "ACCT #: #{person[:acct_no]}"
  puts
end

puts "Enter an account number"
num = gets.chomp
bankinfo.each do |person|
  if num == person[:acct_no]
    puts "FIRST NAME: #{person[:first_name]}"
    puts "LAST NAME: #{person[:last_name]}"
    puts "EMAIL: #{person[:email]}"
    puts "ACCT #: #{person[:acct_no]}"
  end
end
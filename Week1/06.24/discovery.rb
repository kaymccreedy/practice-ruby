require "http"

response = HTTP.get("https://datausa.io/api/data?drilldowns=State&measures=Population")

data = response.parse(:json)["data"]

puts "Enter a state"
state = gets.chomp
puts "Enter a year between 2013 and 2019"
year = gets.chomp

# pp data

data.each do |item|
  if item["Year"] == year
    if item["State"] == state
      puts "The population of #{item["State"]} in #{item["Year"]} was #{item["Population"]}"
    end
  end
end
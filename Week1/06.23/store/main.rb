require "./item.rb"
require "./pricesetable.rb"
require "./guitar.rb"
require "./amp.rb"
require "./strings.rb"

guitar1 = Guitar.new( make: "Fender", model: "Stratocaster", color: "white", price: 800, scale_length: 25.5 )
guitar1.print_info

amp1 = Amp.new( make: "Fender", model: "Deluxe Reverb", color: "black", price: 1000, type: "tube", wattage: 50 )
amp1.print_info
amp1.test_amp

strings1 = Strings.new( make: "Stringjoy", gauge: "11-56", wind: "round-wound", price: 11 )
strings1.print_info

guitar1.price=(100)
guitar1.print_info
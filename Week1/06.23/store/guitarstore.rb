module PriceSetable

  def price=(price)
    @price = price.to_i
  end

end

class Item

  include PriceSetable

  attr_accessor :make, :model, :color, :price, :type, :wattage

  def initialize(options)
    @make = options[:make]
    @model = options[:model]
    @color = options[:color]
    @price = options[:price]
  end

  def print_info
    puts "The #{color} #{make} #{model} costs $#{price}."
  end

  def raise_price
    @price = 1.05 * @price
  end

end

class Guitar < Item

  def initialize(options)
    super
    @scale_length = options[:scale_length]
  end

end


class Amp < Item

  def initialize(options)
    super
    @type = options[:type]
    @wattage = options[:wattage]
  end

  def test_amp
    if @type == "tube"
      puts "Warming up..."
    end
    puts "Testing..." 
    puts "It works!"
  end

end

class Strings < Item

  attr_accessor :gauge, :wind

  def initialize(options)
    super
    @gauge = options[:gauge]
    @wind = options[:wind]
  end

  def print_info
    puts "The #{wind} #{gauge}-gauge #{make} strings cost $#{price}."
  end

end

guitar1 = Guitar.new( make: "Fender", model: "Stratocaster", color: "white", price: 800, scale_length: 25.5 )
pp guitar1

amp1 = Amp.new( make: "Fender", model: "Deluxe Reverb", color: "black", price: 1000, type: "tube", wattage: 50 )
pp amp1
amp1.print_info
amp1.test_amp

strings1 = Strings.new( make: "Stringjoy", gauge: "11-56", wind: "round-wound", price: 11 )
strings1.print_info

guitar1.price=(100)
puts guitar1.price
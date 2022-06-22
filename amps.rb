class Item

  attr_reader :make, :model, :color, :price, :type, :wattage
  attr_writer :color, :price

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

class Food < Item

  attr_reader :shelf_life

  def initialize(options)
    super
    @shelf_life = options[:shelf_life]
  end

end

guitar1 = Guitar.new( make: "Fender", model: "Stratocaster", color: "white", price: 800, scale_length: 25.5 )
pp guitar1

amp1 = Amp.new( make: "Fender", model: "Deluxe Reverb", color: "black", price: 1000, type: "tube", wattage: 50 )
pp amp1
amp1.print_info
amp1.test_amp

food1 = Food.new( shelf_life: "5 days" )
pp food1
p food1.shelf_life
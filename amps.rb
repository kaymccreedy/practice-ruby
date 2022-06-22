class Guitar

  attr_reader :make, :model, :color, :price
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

class Amp

  attr_reader :make, :model, :color, :price, :type, :wattage
  attr_writer :color, :price

  def initialize(options)
    @make = options[:make]
    @model = options[:model]
    @color = options[:color]
    @price = options[:price]
    @type = options[:type]
    @wattage = options[:wattage]
  end

  def print_info
    puts "The #{make} #{model} costs $#{price}."
  end

  def raise_price
    @price = 1.05 * @price
  end

  def test_amp
    if @type == "tube"
      puts "Warming up..."
    end
    puts "Testing..." 
    puts "It works!"
  end

end
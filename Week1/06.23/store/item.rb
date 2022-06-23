require "./pricesetable.rb"

class Item

  include PriceSetable

  attr_accessor :make, :model, :color, :price, :type, :wattage, :gauge, :wind

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
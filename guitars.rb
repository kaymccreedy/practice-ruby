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

item1 = Item.new( make: "Fender", model: "Stratocaster", color: "white", price: 800 )
item2 = Item.new( make: "Gibson", model: "Les Paul", color: "black", price: 1200 )
item3 = Item.new( make: "Gibson", model: "Firebird", color: "red", price: 1000 )
item4 = Item.new( make: "Squire", model: "Telecaster", color: "blue", price: 500 )

item4.raise_price
item4.print_info
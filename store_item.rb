item1 = { make: "Fender", model: "Stratocaster", color: "white", price: 800}
item2 = { make: "Gibson", model: "Les Paul", color: "black", price: 1200}
item3 = { :make => "Gibson", :model => "Firebird", :color => "red", :price => 1000}

class Item

  def initialize(make, model, color, price)
    @make = make
    @model = model
    @color = color
    @price = price
  end

  def make
    @make
  end

  def model
    @model
  end

  def color
    @color
  end

  def price
    @price
  end

  def color=(color)
    @color = color    
  end

  def price=(price)
    @price = price
  end

  def print_info
    puts "The #{color} #{make} #{model} costs $#{price}."
  end

  def raise_price
    @price = 1.05 * @price
  end

end

item1 = Item.new("Fender", "Stratocaster", "white", 800)
item2 = Item.new("Gibson", "Les Paul", "black", 1200)
item3 = Item.new("Gibson", "Firebird", "red", 1000)

p item1
item1.print_info

item1.raise_price
item1.print_info

item1.price = 900
item1.color = "green"
item1.print_info

item4 = Item.new("Squire", "Telecaster", "blue", 500)
5.times do
  item4.raise_price
  item4.print_info
end
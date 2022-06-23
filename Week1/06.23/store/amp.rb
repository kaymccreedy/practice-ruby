require "./item.rb"

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
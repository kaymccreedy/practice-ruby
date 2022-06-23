require "./item.rb"

class Strings < Item

  def initialize(options)
    super
    @gauge = options[:gauge]
    @wind = options[:wind]
  end

  def print_info
    puts "The #{wind} #{gauge}-gauge #{make} strings cost $#{price}."
  end

end
require "./item.rb"

class Guitar < Item

  def initialize(options)
    super
    @scale_length = options[:scale_length]
  end

end
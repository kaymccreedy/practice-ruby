module Actualize

  module PriceSetable

    def price=(price)
      @price = price.to_i
    end

  end

end
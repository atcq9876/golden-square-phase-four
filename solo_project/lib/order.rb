class Order
  def initialize
    # declare an empty @order array
  end

  def add(dish, number)
    # add (dish * number) to @order array
    # returns successfully added message
  end

  def check_order (receipt)
    # returns formatted list of dishes, their prices, and a grand total
    # uses @order array and #price(dish) from Dishes to tally up prices
  end

  # def place_order # / send_text_confirmation
  #   # Plan this after written code and tests for other requirements
  #   # See user story for full info
  # end
end
class Order
  def initialize
    # declare an empty @order array
    @menu = { hawaiian: 9.99, margherita: 7.99, meatfeast: 10.99, pepperoni: 9.99, veggie: 8.99 }
    @order = []
  end

  def see_menu
    # returns @menu (dish names and prices)
    @menu.flatten
  end

  # def price(dish)
  #   #returns price of a dish (accessed using @menu hash)
  # end

  def add(dish, number)
    # add (dish * number) to @order array
    # returns successfully added message
    if (!number.is_a? Integer)
      raise "Please enter a correct quantity"
    elsif @menu.has_key?(dish.to_sym)
      number.times { @order << dish }
      return "#{number} x #{dish} added to order"
    else
      raise "Please enter a correct dish name"
    end
  end

  def check_order #(receipt)
    # returns formatted list of dishes, their prices, and a grand total
    # uses @order array and #price(dish) from Dishes to tally up prices
    raise "No dishes added to order yet" if @order.empty?
    
    receipt = ""
    total_price = 0

    @menu.each_key do |dish|
      if @order.include?(dish.to_s)
        receipt += "#{@order.count(dish.to_s)} x #{dish.to_s}, £#{(@menu[dish] * @order.count(dish.to_s)).to_s}; "
        total_price += (@order.count(dish.to_s) * @menu[dish])
      end
    end

    receipt += "TOTAL = £#{total_price.to_s}"
    return receipt
  end

  # def place_order # / send_text_confirmation
  #   # Plan this after written code and tests for other requirements
  #   # See user story for full info
  # end
end
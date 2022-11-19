class Dishes
  def initialize
    # declare a @menu hash with dish names as key symbols and prices as value symbols
    @menu = { margherita: 7.99, pepperoni: 9.99, veggie: 8.99, meatfeast: 10.99, hawaiian: 9.99 }
  end

  def see_menu
    # returns @menu (dish names and prices)
  end

  def price(dish)
    #returns price of a dish (accessed using @menu hash)
  end
end
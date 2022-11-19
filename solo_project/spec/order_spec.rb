require "order"

RSpec.describe Order do
  describe "#see_menu" do
    it "returns a menu of dishes and their prices" do
      order = Order.new
      expect(order.see_menu).to eq [:hawaiian, 9.99, :margherita, 7.99, :meatfeast, 10.99, :pepperoni, 9.99, :veggie, 8.99]
    end
  end
  
  describe "#add" do
    context "when entering an incorrect dish name" do
      it "raises error" do
        order = Order.new
        expect{ order.add("marg", 1) }.to raise_error "Please enter a correct dish name"
      end
    end

    context "when second argument isn't an integer" do
      it "raises error" do
        order = Order.new
        expect{ order.add("marg", "test") }.to raise_error "Please enter a correct quantity"
      end
    end

    context "when valid arguments are entered" do
      it "returns success message" do
        order = Order.new
        expect(order.add("margherita", 1)).to eq "1 x margherita added to order"
      end
    end
  end

  describe "#check_order" do
    context "when no dishes have been ordered" do
      it "raises error" do
        order = Order.new
        expect{ order.check_order }.to raise_error "No dishes added to order yet"
      end
    end
  
    context "when 4 dishes have been ordered" do
      it "returns itemised receipt of order" do
        order = Order.new
        order.add("margherita", 1)
        order.add("veggie", 2)
        order.add("pepperoni", 1)
        expect(order.check_order).to eq "1 x margherita, £7.99; 1 x pepperoni, £9.99; 2 x veggie, £17.98; TOTAL = £35.96"
      end
    end
  end
end

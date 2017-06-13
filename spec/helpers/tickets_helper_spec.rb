require "rails_helper"

describe TicketsHelper do

  describe "#customer_orders" do

    let(:orders) do
      [
        double(id: 1, order_number: "ABC123", description: "Foobar item"),
        double(id: 2, order_number: "DEF456", description: "Another item"),
      ]
    end

    it "outputs the dropdown with order number and description" do
      expect(helper.customer_orders(orders)).to eq([
        [ "ABC123 - Foobar item", 1 ],
        [ "DEF456 - Another item", 2 ],
      ])
    end
  end
end


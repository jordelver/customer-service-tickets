module TicketsHelper
  def customer_orders(orders)
    orders.map do |order|
      [
        "#{order.order_number} - #{order.description}",
        order.id
      ]
    end
  end
end


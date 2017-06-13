module TicketsHelper
  def customer_orders(orders)
    orders.map do |order|
      [
        "#{order.order_number} - #{order.description}",
        order.id
      ]
    end
  end

  def error_message(object, method, error_message)
    return if object.errors[method].empty?

    error_message
  end
end


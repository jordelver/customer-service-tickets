class Ticket < ApplicationRecord

  PROBLEMS = [
    "Order did not arrive",
    "My order is wrong",
    "My tights broke"
  ]

  RESOLUTIONS = [
    "Please send me a replacement",
    "Please send me a different item",
    "Please refund my order"
  ]

  validates :order_id, :email, :problem, :preferred_solution, presence: true

end

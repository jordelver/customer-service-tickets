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

end

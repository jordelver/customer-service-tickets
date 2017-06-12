class Order < ApplicationRecord
  validates :order_number, :email, :description, presence: true
end

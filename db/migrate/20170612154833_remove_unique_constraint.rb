class RemoveUniqueConstraint < ActiveRecord::Migration[5.1]
  def change
    remove_index :tickets, :order_id
  end
end

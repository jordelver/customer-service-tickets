class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.string :email
      t.string :description

      t.timestamps
    end
  end
end

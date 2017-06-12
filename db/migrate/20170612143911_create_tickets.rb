class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.string :email
      t.integer :order_id
      t.string :problem
      t.string :preferred_solution

      t.timestamps
    end
    add_index :tickets, :order_id, unique: true
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :base
      t.integer :topping-id

      t.timestamps null: false
    end
  end
end

class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.int :norderNum
      t.string :orderer
      t.string :name
      t.string :description
      t.string :comments
      t.string :size
      t.string :quantity

      t.timestamps null: false
    end
  end
end

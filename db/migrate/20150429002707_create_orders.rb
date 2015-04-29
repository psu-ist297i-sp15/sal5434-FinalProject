class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :is_active
      t.datetime :pickup

      t.timestamps null: false
    end
  end
end

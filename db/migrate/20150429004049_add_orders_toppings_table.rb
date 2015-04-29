class AddOrdersToppingsTable < ActiveRecord::Migration
  def change
    create_table :orders_toppings do |t|
      t.belongs_to :order, index:true
      t.belongs_to :topping, index:true
    end
  end
end

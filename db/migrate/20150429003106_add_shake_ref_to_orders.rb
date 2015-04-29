class AddShakeRefToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :shake, index: true, foreign_key: true
  end
end

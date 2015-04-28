class AddMixinRefToOrder < ActiveRecord::Migration
  def change
    add_reference :orders, :mixin, index: true
    add_foreign_key :orders, :mixins
  end
end

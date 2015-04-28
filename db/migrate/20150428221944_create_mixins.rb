class CreateMixins < ActiveRecord::Migration
  def change
    create_table :mixins do |t|
      t.string :name
      t.string :amount

      t.timestamps null: false
    end
  end
end

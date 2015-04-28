class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name
      t.string :base
      t.text :comments

      t.timestamps null: false
    end
  end
end

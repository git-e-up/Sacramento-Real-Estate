class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :street
      t.string :city
      t.integer :price

      t.timestamps null: false
    end
  end
end

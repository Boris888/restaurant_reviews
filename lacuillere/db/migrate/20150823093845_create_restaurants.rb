class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :category
      t.references :review, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

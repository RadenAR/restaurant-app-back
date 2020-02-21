class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :rating
      t.string :cuisine_type
      t.boolean :healthy
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

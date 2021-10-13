class CreateListings < ActiveRecord::Migration[6.1]
  def change
    create_table :listings do |t|
      t.integer :user_id
      t.string :address
      t.string :description
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :parking
      t.boolean :ac
      t.boolean :washer_dryer
      t.string :lease

      t.timestamps
    end
  end
end

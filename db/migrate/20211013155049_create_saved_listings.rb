class CreateSavedListings < ActiveRecord::Migration[6.1]
  def change
    create_table :saved_listings do |t|
      t.integer :user_id
      t.integer :listing_id

      t.timestamps
    end
  end
end

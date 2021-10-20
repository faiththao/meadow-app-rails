class DeleteColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :img_url, :string
    add_column :listings, :img_url, :string
  end
end

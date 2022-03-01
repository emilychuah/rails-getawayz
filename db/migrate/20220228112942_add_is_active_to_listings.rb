class AddIsActiveToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :is_active, :boolean, default: false
  end
end

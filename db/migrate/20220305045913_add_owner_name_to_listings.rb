class AddOwnerNameToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :owner_name, :string
  end
end

class AddPictureUrlToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :picture_url, :string
  end
end

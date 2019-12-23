class AddAddressToGifts < ActiveRecord::Migration[5.2]
  def change
    add_column :gifts, :address, :string
  end
end

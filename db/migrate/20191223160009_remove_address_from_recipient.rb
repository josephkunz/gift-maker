class RemoveAddressFromRecipient < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipients, :address, :string
  end
end

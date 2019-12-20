class AddRecipientIdToGift < ActiveRecord::Migration[5.2]
  def change
    add_reference :gifts, :recipient, foreign_key: true
  end
end

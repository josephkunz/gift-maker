class CreateGifts < ActiveRecord::Migration[5.2]
  def change
    create_table :gifts do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.boolean :status
      t.string :occasion

      t.timestamps
    end
  end
end

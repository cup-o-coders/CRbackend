class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :image_url
      t.string :name
      t.string :display_address
      t.string :display_phone
      t.integer :rating

      t.timestamps
    end
  end
end

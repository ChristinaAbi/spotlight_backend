class CreateArtworks < ActiveRecord::Migration[6.0]
  def change
    create_table :artworks do |t|
      t.string :artist_name
      t.string :name
      t.string :description
      t.integer :price
      t.string :artist_id

      t.timestamps
    end
  end
end

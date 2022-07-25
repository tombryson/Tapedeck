class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.text :title
      t.text :image
      t.integer :genre_id
      t.integer :artist_id

      t.timestamps
    end
  end
end

class CreateAlbumsTapedecks < ActiveRecord::Migration[5.2]
  def change
    create_table :albums_tapedecks, :id => false do |t|
      t.integer :tapedeck_id
      t.integer :album_id
    end
  end
end

class AddReleasedToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :released, :date
  end
end

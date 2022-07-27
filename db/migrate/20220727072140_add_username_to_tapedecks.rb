class AddUsernameToTapedecks < ActiveRecord::Migration[5.2]
  def change
    add_column :tapedecks, :username, :text
  end
end

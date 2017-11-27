class AddIndex < ActiveRecord::Migration[5.1]
  def change
    add_index  :artworks, :artist_id
    add_index :users, :username
  end
end

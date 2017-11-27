class CreateArtworkShares < ActiveRecord::Migration[5.1]
  def change
    create_table :artworkshares do |t|
      t.integer :artwork_id, null: false
      t.index :artwork_id
      t.integer :viewer_id, null: false
      t.index :viewer_id
      t.timestamps
      
    end
  end
end

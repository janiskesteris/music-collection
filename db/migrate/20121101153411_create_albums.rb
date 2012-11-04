class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :artist
      t.string :label
      t.date :released_on
      t.text :description
      t.string :cover_image
      t.integer :genre_id
      t.integer :user_id

      t.timestamps
    end
    add_index :albums, :genre_id
    add_index :albums, :user_id
  end
end

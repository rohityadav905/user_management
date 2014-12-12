class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :user_id
      t.boolean :trash

      t.timestamps
    end
  end
end

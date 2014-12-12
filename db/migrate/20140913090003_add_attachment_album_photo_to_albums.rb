class AddAttachmentAlbumPhotoToAlbums < ActiveRecord::Migration
  def self.up
    change_table :albums do |t|
      t.attachment :album_photo
    end
  end

  def self.down
    remove_attachment :albums, :album_photo
  end
end

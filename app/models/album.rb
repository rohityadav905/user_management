class Album < ActiveRecord::Base
	has_attached_file :album_photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :album_photo, :content_type => /\Aimage\/.*\Z/
  	validates :album_photo, presence: true
def self.albumcreate(album_p)
	@album = Album.new(album_p) 
	@album.save
end
end
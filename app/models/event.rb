class Event < ActiveRecord::Base

	has_attached_file :event_logo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :event_logo, :content_type => /\Aimage\/.*\Z/
    has_many :eventtypes
    has_many :eventtopics
    belongs_to :user
    validates :title,:location, :start_event ,:end_event,:event_description,:organizer_name , :organizer_description ,:eventtype_id , :eventtopic_id ,:event_logo , presence: true
  
    def self.eventindex
    	Event.all.order(created_at: :desc)
    end
end

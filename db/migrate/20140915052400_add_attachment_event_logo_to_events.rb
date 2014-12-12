class AddAttachmentEventLogoToEvents < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.attachment :event_logo
    end
  end

  def self.down
    drop_attached_file :events, :event_logo
  end
end

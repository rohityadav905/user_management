class AddAttachmentSendfileToMessages < ActiveRecord::Migration
  def self.up
    change_table :messages do |t|
      t.attachment :sendfile
    end
  end

  def self.down
    drop_attached_file :messages, :sendfile
  end
end

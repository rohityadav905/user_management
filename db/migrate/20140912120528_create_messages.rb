class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :receiver_id
      t.integer :sender_id
      t.boolean :trash
      t.string :messages
      t.string :subject

      t.timestamps
    end
  end
end

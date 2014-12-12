class CreateEventtopics < ActiveRecord::Migration
  def change
    create_table :eventtopics do |t|
      t.string :event_topic

      t.timestamps
    end
  end
end

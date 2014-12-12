class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.datetime :start_event
      t.datetime :end_event
      t.string :event_description
      t.string :organizer_name
      t.string :organizer_description

      t.timestamps
    end
  end
end

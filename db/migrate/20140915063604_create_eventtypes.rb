class CreateEventtypes < ActiveRecord::Migration
  def change
    create_table :eventtypes do |t|
      t.string :event_type

      t.timestamps
    end
  end
end

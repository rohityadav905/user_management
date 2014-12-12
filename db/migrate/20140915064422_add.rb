class Add < ActiveRecord::Migration
  def change
  	add_column :events, :eventtype_id, :integer
  	add_column :events, :eventtopic_id, :integer
  end
end

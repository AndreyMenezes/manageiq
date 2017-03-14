class AddComponentIdToEventStreams < ActiveRecord::Migration[5.0]
  def change
  	add_column :event_streams, :compenentID, :string
  end
end

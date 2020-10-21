class AddEventIdToVideos < ActiveRecord::Migration[5.2]
  def change
    add_column :videos, :event_id, :integer
  end
end

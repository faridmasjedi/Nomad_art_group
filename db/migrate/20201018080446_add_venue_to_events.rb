class AddVenueToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :venue, :text
  end
end

class AddEventIdToRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :event_id, :integer
  end
end

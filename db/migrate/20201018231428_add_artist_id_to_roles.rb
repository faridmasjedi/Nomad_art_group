class AddArtistIdToRoles < ActiveRecord::Migration[5.2]
  def change
    add_column :roles, :artist_id, :integer
  end
end

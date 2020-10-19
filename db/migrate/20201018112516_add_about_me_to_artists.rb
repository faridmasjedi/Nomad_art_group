class AddAboutMeToArtists < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :about_me, :text
  end
end

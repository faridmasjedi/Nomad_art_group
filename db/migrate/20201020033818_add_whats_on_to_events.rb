class AddWhatsOnToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :whats_on, :text
  end
end

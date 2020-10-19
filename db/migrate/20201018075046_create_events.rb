class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :title
      t.text :poster
      t.text :date
      t.text :duration
      t.text :description
      t.integer :genre_id

      t.timestamps
    end
  end
end

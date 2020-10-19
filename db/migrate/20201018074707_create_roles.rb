class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|
      t.text :title

      t.timestamps
    end
  end
end

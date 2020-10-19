class AddPriceToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :price, :text
  end
end

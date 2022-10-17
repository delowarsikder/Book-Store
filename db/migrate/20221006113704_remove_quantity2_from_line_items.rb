class RemoveQuantity2FromLineItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :line_items, :quantity2, :integer
  end
end

class RemoveQuantity1FromLineItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :line_items, :quantity1, :integer
  end
end

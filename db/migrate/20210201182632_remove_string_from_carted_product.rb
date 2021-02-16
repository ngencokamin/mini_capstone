class RemoveStringFromCartedProduct < ActiveRecord::Migration[6.0]
  def change
    remove_column :carted_products, :string, :string
  end
end

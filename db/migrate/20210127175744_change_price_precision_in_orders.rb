class ChangePricePrecisionInOrders < ActiveRecord::Migration[6.0]
  def change
    change_column :orders, :subtotal, :decimal, precision: 15, scale: 2
    change_column :orders, :tax, :decimal, precision: 10, scale: 2
    change_column :orders, :total, :decimal, precision: 15, scale: 2
  end
end

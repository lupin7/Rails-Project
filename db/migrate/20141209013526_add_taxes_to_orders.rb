class AddTaxesToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :pst_rate, :decimal
    add_column :orders, :gst_rate, :decimal
    add_column :orders, :hst_rate, :decimal
  end
end

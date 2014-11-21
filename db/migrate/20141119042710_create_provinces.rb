class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.string :code
      t.float :pst
      t.float :gst
      t.float :hst

      t.timestamps
    end
  end
end

class AddContactsToAbout < ActiveRecord::Migration
  def change
    add_column :abouts, :address, :string
    add_column :abouts, :province_city_name, :string
    add_column :abouts, :contact_1, :string
    add_column :abouts, :contact_2, :string
  end
end

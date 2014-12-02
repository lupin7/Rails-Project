ActiveAdmin.register Product do

  permit_params :name, :description, :price, :stock_quantity,
                :category, :image_filename, :sale_price

  form :html => { :enctype => 'multipart/form-data'} do |f|
    f.inputs "Details" do
      f.input :name
      f.input :description
      f.input :price
      f.input :sale_price
      f.input :stock_quantity
      f.input :category
      f.input :image_filename
    end
    f.actions
  end
end

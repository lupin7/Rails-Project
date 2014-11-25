ActiveAdmin.register About do
  # actions :all, :except => [:create]
  actions :index, :show, :update, :edit
  permit_params :about_title, :about_text, :goal_title, :goal_text, 
                :address, :province_city_name, :contact_1, :contact_2

  form :html => { :enctype => 'multipart/form-data'} do |f|
    f.inputs "About/Contact Page" do
      f.input :about_title
      f.input :about_text
      f.input :goal_title
      f.input :goal_text
      f.input :address
      f.input :province_city_name
      f.input :contact_1
      f.input :contact_2
    end
    f.actions
  end
end

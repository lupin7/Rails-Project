ActiveAdmin.register About do
  # actions :all, :except => [:create]
  actions :index, :show, :update, :edit
  permit_params :about_title, :about_text, :goal_title, :goal_text

  form :html => { :enctype => 'multipart/form-data'} do |f|
    f.inputs "About/Contact Page" do
      f.input :about_title
      f.input :about_text
      f.input :goal_title
      f.input :goal_text
    end
    f.actions
  end
end

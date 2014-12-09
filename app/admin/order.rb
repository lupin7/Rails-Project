ActiveAdmin.register Order do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  permit_params :customer_id, :status, :pst_rate, :gst_rate, :hst_rate, :total

  form do |f|
    f.inputs "Details" do
      f.input :customer
      f.input :status
      f.input :pst_rate
      f.input :gst_rate
      f.input :hst_rate
      f.input :total
    end
    f.actions
  end
end

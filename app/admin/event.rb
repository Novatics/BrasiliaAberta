ActiveAdmin.register Event do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :number, :date, :name, :description, :facebook_link
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  filter :number  
  filter :date
  filter :name

  index do
    id_column
    column :number
    column :name
    column :description
    column :date
    actions
  end

  form do |f|
  f.semantic_errors 
  f.inputs 'Campos' do
    f.input :number
    f.input :date
    f.input :name
    f.input :description
    f.input :facebook_link
  end
  f.actions
end


end

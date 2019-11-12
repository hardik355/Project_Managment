ActiveAdmin.register Project do
  permit_params :p_name
  
  index do
    column :p_name
    actions
  end

end

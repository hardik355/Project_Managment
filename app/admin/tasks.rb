ActiveAdmin.register Task do
  permit_params :t_name
  
  index do
    column :t_name
    # column :p_name
    actions
  end
end

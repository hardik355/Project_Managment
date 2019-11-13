ActiveAdmin.register Project do
  permit_params :p_name
  
  index do
    column "Project_Name", :p_name
    actions
  end

end

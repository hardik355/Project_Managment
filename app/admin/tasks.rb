ActiveAdmin.register Task do
  permit_params :t_name, :p_name, :project_id, :project
  
  # Index form
  index do
    column "Task_Name", :t_name
    column "Project", :project_id do |task|
      task.project.p_name
    end
    actions
  end

  # Form New 
  form do |f|
    f.input :t_name
    f.inputs do
      f.input :project_id, as: :select, collection: Project.pluck(:p_name, :id)
    end
    f.actions
  end

  #Show Table
  show do
    attributes_table do
      row :t_name
      row "Project", :project_id do |task|
        task.project.p_name
      end
    end
  end

end
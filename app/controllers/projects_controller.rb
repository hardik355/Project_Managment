class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
      @project = Project.new 
  end

  def create
    @project = Project.new (project_params)
    @project.save
    redirect_to new_projects_path
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    @project.update(product_params)
    redirect_to new_projects_path
  end

  def show
    @project = Project.find(params[:id])
  end


  private
  def project_params
    params.require(:project).permit(:p_name)
  end
end

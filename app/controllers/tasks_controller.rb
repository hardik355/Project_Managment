class TasksController < ApplicationController

  # before_action :all_tasks, only: [:index, :create]
  def index
    # @tasks = Task.all
    project = Project.find_by(id: params[:project_id])
    @tasks = project.tasks
    respond_to do |format|
      format.js
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes(task_params)
    redirect_to tasks_path
  end

  def show
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:t_name, :description, :p_name, :project_id)
  end

end

class TasksController < ApplicationController
  before_action :require_user

  def index
    @user = User.find(session[:user_id])
    @tasks = @user.tasks
  end

  def create
    user = User.find(session[:user_id])
    user.tasks.create(task_params)
    redirect_to tasks_path
  end

  def update
    task = Task.find(params[:id])
    task.update(done: !task.done)
    redirect_to tasks_path
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title)
  end

  def require_user
    redirect_to root_path unless session[:user_id]
  end
end

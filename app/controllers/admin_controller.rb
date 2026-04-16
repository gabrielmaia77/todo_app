class AdminController < ApplicationController
  before_action :require_admin

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to "/admin"
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to "/admin"
  end

  private

  def require_admin
    user = User.find(session[:user_id])
    redirect_to root_path unless user.admin
  end

  def user_params
    params.require(:user).permit(:email, :password, :name)
  end
end

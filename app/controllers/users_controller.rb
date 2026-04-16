class UsersController < ApplicationController
  before_action :require_admin

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)

    if user.save
      redirect_to "/admin", notice: "Usuário criado com sucesso"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])

    if user.update(user_params)
      redirect_to "/admin", notice: "Usuário atualizado com sucesso"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to "/admin", notice: "Usuário deletado"
  end

  private

  def require_admin
    user = User.find(session[:user_id])
    redirect_to root_path unless user.admin
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end

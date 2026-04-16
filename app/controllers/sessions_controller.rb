class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email], password: params[:password])

    if user
      session[:user_id] = user.id

      if user.admin
        redirect_to "/admin"
      else
        redirect_to tasks_path
      end
    else
      redirect_to root_path, alert: "Email ou senha inválidos"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end

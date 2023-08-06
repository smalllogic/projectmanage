# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController

    skip_before_action :verify_authenticity_token, only: [:create]
  def new
  end

  def create
    user = User.find_by(username: params[:user][:username])

    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: '登录成功！'
    else
      flash.now[:alert] = '用户名或密码错误！'
      render :new
    end
  end

  def destroy
  reset_session
    redirect_to root_path, notice: '登出成功！'
  end


end

class SessionsController < ApplicationController
  layout 'sessions'
  def index
    @users = User.all
  end
  
  def new
    render 'new'
  end

  def create
    user = User.find_by :email => params[:email]
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to profile_path
    else
      flash[:error] = "Sorry, login failed"
      redirect_to login_path
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
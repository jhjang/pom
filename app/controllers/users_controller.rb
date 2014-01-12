class UsersController < ApplicationController
  def create
    user = User.from_omniauth(request.env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def show
  end

  def index
    @user = User.all
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end

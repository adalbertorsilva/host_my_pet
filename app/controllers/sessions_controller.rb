class SessionsController < ApplicationController

  def index
    @user = User.new
  end

  def login
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
    else
      render :index
    end

  end

  private



end

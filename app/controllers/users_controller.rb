class UsersController < ApplicationController

  def index
    @user = User.new
  end

end

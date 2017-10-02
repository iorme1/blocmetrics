class UsersController < ApplicationController

  def show
    @user = current_user
    @application = Application.new
  end

end

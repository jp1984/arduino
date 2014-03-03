class RegistrationsController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      flash[:notice] = "OK"
      redirect_to root_url
    else
      flash[:alert] = "ERROR"
      render "home/index"
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end

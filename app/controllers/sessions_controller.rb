class SessionsController < ApplicationController

  def signin
    @user= User.where(name: params[:name], encrypted_password: params[:password])

    if @user.any?
      redirect_to places_url, notice:"asd"

    else
      redirect_to root_url, notice:"bd"
    end

  end
end

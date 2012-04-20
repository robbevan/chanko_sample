class AuthController < ApplicationController
  def login
    user = User.find_or_create_by_name(params[:name])
    session[:user] = user
    redirect_to top_path
  end

  def logout
    session[:user] = nil
    redirect_to top_path
  end
end

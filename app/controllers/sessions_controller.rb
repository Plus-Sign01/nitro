class SessionsController < ApplicationController
  def create
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged in'
　end
　
  def destroy
  	session[:user_id] = nil
  	redirect_to root_path, notice: 'Logged out'
  end
end

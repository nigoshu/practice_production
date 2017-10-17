class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(
      name: params[:name],
      email: params[:email]
      )
    @user.save
    redirect_to("")
  end
  
  
  
  
end

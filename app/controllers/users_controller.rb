class UsersController < ApplicationController
  
  def show
    @user = User.find_by(id: params[:id])
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(
      name: params[:name],
      email: params[:email]
      )
    @user.save
    redirect_to("/#{@user.id}")
  end
  
  
  
  
end

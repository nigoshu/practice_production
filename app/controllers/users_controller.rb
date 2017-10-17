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
    if @user.save
      flash[:notice] = "登録が完了しました！"
    redirect_to("/#{@user.id}")
    else
      render("/new")
    end
  end
  
  def edit 
    @user = User.find_by(id: params[:id])
  end
  
  def eupdate
    
  end
  
end

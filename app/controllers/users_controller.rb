class UsersController < ApplicationController
  
  def new
    @user = User.new
  end

  def create
    
    user = User.create(params_user)
    if user.save
    
      session[:user_id]=user.id

    end
    redirect_to user_path(user)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
    
    @user = User.find_by_id(params[:id])

  end
  
  private

  def params_user
    params.require(:user).permit(:name, :nausea, :happiness, :tickets, :height, :password)
  end
end

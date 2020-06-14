class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def signin
  end
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find_by(id: params[:id])
    @posts = @user.posts
  end
  
  def edit
    @user = User.find_by(id: params[:id])
  end
  
  def update
    @user = User.find_by(id: params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      flash[:success] = "Welcome to the Sample App!"
      #redirect_to user_url(@user)
      redirect_to @user
    else
      render "new"
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation, :picture, :coment)
  end
  
end

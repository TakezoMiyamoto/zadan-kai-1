class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update]

  def index
    @users = User.all
  end


  def show
    @userName = @user.username
  end

  def edit

  end

  def update
    if @user.update(edit_user_params)
      flash[:success] = "Your profile was updated!"
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def edit_user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :avatar, :remote_avatar)
  end

  def set_user
    @user = User.find(params[:id])
  end
end

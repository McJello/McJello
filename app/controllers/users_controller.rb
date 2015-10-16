class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def create
    @user=User.create(params(user_params))
    
    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :password, :email)
  end
end

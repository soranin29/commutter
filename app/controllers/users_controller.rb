class UsersController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to home_path
    else
      redirect_back fallback_location: users_new_path, flash: {
        user: user,
        error_messages: user.errors.full_messages
      }
    end
  end

  def me
  end

  private

  def user_params
    params.require(:user).permit(:name,:email, :password, :password_confirmation)
  end

end

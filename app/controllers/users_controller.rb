class UsersController < ApplicationController
  before_action :user_logged_in!, only: [:index]

  def index
    @gigs = current_user.gigs.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = "You are now a user!"
      #session[:user_id] = @user.id
      sign_in @user
      redirect_to root_url
    else
      render "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
  end
end

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Registration successful."
      redirect_to people_path
    else
      render :action => 'new'
    end
  end

  def index
    @users = User.all
  end

  def update
    if @user.update_attributes(user_params)
      flash[:notice] = "Successfully updated profile."
      redirect_to people_path
    else
      render :action => 'edit'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = current_user
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username,  :email, :password,:password_confirmation)
    end
end
class UserSessionsController < ApplicationController
	def new
		@user_session = UserSession.new
	end
	def create
	  @user_session = UserSession.new(user_session_params)
	  if @user_session.save
	    flash[:notice] = "Successfully logged in."
	    redirect_to root_url
	  else
	    render :action => 'new'
	  end
	end

	def destroy
	  @user_session = UserSession.find
	  @user_session.destroy
	  flash[:notice] = "Successfully logged out."
	  redirect_to root_url
	end

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_session
      @user = user_session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_session_params
      params.require(:user_session).permit(:username,  :password)
    end
end
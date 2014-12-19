class PagesController < ApplicationController
	include ApplicationHelper

	def home
	end

	def about
	end
	

	def admin_signin
	end


	def admin_session_create
		if params[:password].to_s == "Ogurec2000"
			sign_in
			redirect_to root_url
    else
    	redirect_to admin_signin_path
    end
	end

	def admin_session_destroy
		cookies.delete :remember_token
    redirect_to root_url 
	end

end

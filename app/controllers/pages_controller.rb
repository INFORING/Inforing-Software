class PagesController < ApplicationController
	include ApplicationHelper

	def home
		@portfolio_items = PortfolioItem.all
		@news = News.first(3)
	end

	def about
		@news = News.first(3)
	end

	def price
    @news = News.all
	end

	def order
		@order = params[:order]
	  @orders = ["Промо-сайт","Корпоративный сайт","Интернет-магазин","Продвижение сайта","Контекстная реклама","Поддержка сайта"]
		respond_to do |format|
			format.js
		end
	end

	def send_order
		unless params[:name].blank? or params[:contacts].blank? or params[:description].blank? or params[:order].blank?
  		Feedback.order(params[:name],params[:contacts],params[:description],params[:order]).deliver
    end
    respond_to do |format|
      format.js
    end
	end

	def contact
		@news = News.first(3)
	end
	

	def admin_signin
		@news = News.first(3)
	end

	def feedback
		unless params[:name].blank? or params[:email].blank? or params[:text].blank? or params[:title].blank?
  		Feedback.feedback(params[:name],params[:email],params[:title],params[:text]).deliver
    end
    redirect_to contact_path
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

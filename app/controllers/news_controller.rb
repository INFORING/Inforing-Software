class NewsController < ApplicationController
	
	def new	
		@new_news = News.new
		respond_to do |format|
			format.js
		end
	end

	def create
		@new_news = News.create(news_params)
		@news = News.all
		respond_to do |format|
			format.js
		end
	end

	def edit
		@news = News.find(params[:id])
	end

	def show
		@show_news = News.find(params[:id])
		@news = News.first(3)
	end

	def index
		@news = News.all
		@news = News.first(3)
	end

	def update
		News.find(params[:id]).update_attributes(news_params)
		@news = News.all
		respond_to do |format|
			format.js
		end
	end

	def destroy
		News.find(params[:id]).destroy
		@news = News.all
		respond_to do |format|
			format.js
		end
	end

	private 

	def news_params
		params.require(:news).permit(:title, :description,:image)	
	end

end

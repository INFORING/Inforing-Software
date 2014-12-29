class PortfolioItemsController < ApplicationController
	def new	
		@new_portfolio_item = PortfolioItem.new
		@categories = File.read('config/categories').split("\n")
		respond_to do |format|
			format.js
		end
	end

	def create
		@portfolio_items = PortfolioItem.all
		@new_portfolio_item = PortfolioItem.new(portfolio_item_params)
		@new_portfolio_item.category = params[:category].join(',')
		if @new_portfolio_item.save
		    unless params[:images].blank?  
        	params[:images].each do |image|
          @new_portfolio_item.portfolio_images.create(image: image)
        end
      end  
   end
		respond_to do |format|
			format.js
		end
	end

	def portfolio_image_description
	end

	def portfolio_image_delete
    @portfolio_item = PortfolioImage.find(params[:id]).portfolio_item
    @categories = File.read('config/categories').split("\n")
		PortfolioImage.find(params[:id]).destroy
		respond_to do |format|
			format.js
		end
	end

	def edit
		@portfolio_item = PortfolioItem.find(params[:id])
		@categories = File.read('config/categories').split("\n") 
		respond_to do |format|
			format.js
		end
	end

	def update
		@portfolio_items = PortfolioItem.all
		@portfolio_item = PortfolioItem.find(params[:id])
		@portfolio_item.update(portfolio_item_params)
		@portfolio_item.update(category: params[:category].join(','))
		if @portfolio_item.save
		    unless params[:images].blank?  
        	params[:images].each do |image|
          @portfolio_item.portfolio_images.create(image: image)
        end
      end  
   end
		respond_to do |format|
			format.js
		end
	end

	def show
		@portfolio_item = PortfolioItem.find(params[:id])
		@news = News.first(3)
	end

	def index
		@portfolio_items = PortfolioItem.all
		@news = News.first(3)
	end

	def destroy
		PortfolioItem.find(params[:id]).destroy
		@portfolio_items = PortfolioItem.all
		respond_to do |format|
			format.js
		end
	end

  def portfolio_item_params
		params.require(:portfolio_item).permit(:title, :description,:location,:customer,:date,:url)	
	end


end

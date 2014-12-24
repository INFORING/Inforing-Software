class NewsController < ApplicationController
	
	def new	
		@new_portfolio_item = PortfolioItem.new
		respond_to do |format|
			format.js
		end
	end

	def create
		@portfolio_items = PortfolioItem.all
		@new_portfolio_item = PortfolioItem.create(portfolio_items_params)
		respond_to do |format|
			format.js
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end


end

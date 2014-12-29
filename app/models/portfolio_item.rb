class PortfolioItem < ActiveRecord::Base
  validates :title,  presence: true
  validates :description,  presence: true
  validates :date,  presence: true
  validates :customer,  presence: true
  validates :location,  presence: true
  validates :url,  presence: true

  has_many :portfolio_images, dependent: :destroy

  def classes
  	classes = ""
  	self.category.split(',').each do |c|
  		case c
	  		when "Промо-сайты"
	  			classes << " cat_promo" 
	  		when "Корпоративные сайты"
	  			classes << " cat_corporate" 
	  		when "Интернет-магазины"
	  			classes << " cat_ecommerce"
	  		when "Продвижение сайтов"
	  			classes << " cat_seo"
	  		when "Поддержка сайтов"
	  			classes << " cat_support"
  		end
  	end
  	classes
  end
end

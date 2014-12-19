class AddImageToPortfolio < ActiveRecord::Migration
  def change
  	add_attachment :portfolio_images, :image
  end
end

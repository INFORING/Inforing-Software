class ChangePortfolioItem < ActiveRecord::Migration
  def change
  	add_column :portfolio_items, :url, :string
  end
end

class PortfolioItem < ActiveRecord::Base
	validates :title,  presence: true
  validates :description,  presence: true
  validates :date,  presence: true
  validates :customer,  presence: true
  validates :location,  presence: true
  validates :category,  presence: true

  has_many :portfolio_images, dependent: :destroy
end

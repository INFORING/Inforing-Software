class CreatePortfolioImages < ActiveRecord::Migration
  def change
    create_table :portfolio_images do |t|
      t.integer :portfolio_item_id
      t.text :description

      t.timestamps
    end
  end
end

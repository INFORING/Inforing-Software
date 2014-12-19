class CreatePortfolioItems < ActiveRecord::Migration
  def change
    create_table :portfolio_items do |t|
      t.string :title
      t.text :description
      t.string :date
      t.string :customer
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end

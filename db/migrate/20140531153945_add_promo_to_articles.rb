class AddPromoToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :promo, :boolean
  end
end

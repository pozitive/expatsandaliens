class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :image
      t.text :content
      t.integer :category_id
      t.string :summary
      t.string :keyword

      t.timestamps
    end
  end
end

class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.text :content
      t.string :summary
      t.string :keyword

      t.timestamps
    end
  end
end

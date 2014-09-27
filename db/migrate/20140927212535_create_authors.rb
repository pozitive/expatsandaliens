class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :avatar
      t.string :email
      t.string :website
      t.text :bio

      t.timestamps
    end
  end
end

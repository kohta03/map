class CreateUserArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_articles do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :title

      t.timestamps
    end
  end
end

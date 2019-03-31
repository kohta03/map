class RenameUserIdColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :user_articles, :userId_id, :user_id
  end
end

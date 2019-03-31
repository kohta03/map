class AddUserId < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_articles, :user, index: true
  end
end

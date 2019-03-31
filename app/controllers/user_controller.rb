class UserController < ApplicationController

  def user
    @userArticle = UserArticle.new
    @userArticles = UserArticle.all
  end

  def userArticle_params
    params.require(:user_article).permit(
      :title, :address, :latitude, :longitude, :user_id
    )
  end

  def create
      userArticle = UserArticle.new(userArticle_params)
      userArticle.save
      logger.debug userArticle.errors.inspect
      redirect_to '/user/user'
  end

  def destroy
      puts params
      key = params[:id]
      userArticle = UserArticle.find(key)
      userArticle.destroy
      redirect_to '/user/user'
  end

end

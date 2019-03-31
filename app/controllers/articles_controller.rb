class ArticlesController < ApplicationController

    def article_params
        params.require(:article).permit(
          :title, :address, :latitude, :longitude
        )
    end

    def create
        article = Article.new(article_params)
        article.save
        redirect_to '/'
    end
    
    def destroy
        puts params
        key = params[:id]
        article = Article.find(key)
        article.destroy
        redirect_to '/'
    end
end

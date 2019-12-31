class ArticleController < ApplicationController
  def index
    @articles = Article.all
  end
 def create
  Article.create title: params[:title]
  redirect_to "/article"
 end
end

class ArticleController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
 def create
  Article.create title: params[:title]
  redirect_to "/article"
 end
end

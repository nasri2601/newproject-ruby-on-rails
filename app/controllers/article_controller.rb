class ArticleController < ApplicationController
  def index
    @articles = Article.all
    @categories = Category.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to "/article"
  end

  def update

   Article.find(params[:id]).update title: params[:title]
     redirect_to "/article/#{params[:id]}"
  end

  def create
  Article.create title: params[:title], category_id: params[:category_id]
  
    redirect_to "/article"
 end

end

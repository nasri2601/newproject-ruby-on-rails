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

   @article = Article.find(params[:id])
   if @article.update title: params[:title]
     redirect_to "/article/#{params[:id]}"
   else
    render'show'
   end

  

  end

  def create
  Article.create title: params[:title], category_id: params[:category_id],content: params[:content]
  
    redirect_to "/article"
 end

end

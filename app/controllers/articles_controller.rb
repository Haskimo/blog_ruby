class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @categories = Category.all
  end

  def create
    Article.create title: params[:title], author: params[:author], content: params[:content], category_id: params[:category_id]
    redirect_to "/articles"
  end

  def show
    @categories = Category.all
    @this_article = Article.find(params[:id])
  end

  def update
    @categories = Category.all
    @this_article = Article.find(params[:id])
    if @this_article.update title: params[:title], author: params[:author], content: params[:content], category_id: params[:category_id]
      redirect_to "/articles/#{params[:id]}"
    else
      render 'show'
    end
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to "/articles"
  end
end

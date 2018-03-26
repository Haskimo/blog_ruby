class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def create
    Article.create title: params[:title], author: params[:author], content: params[:content]
    redirect_to "/articles"
  end

  def show
    @this_article = Article.find(params[:id])
  end

  def destroy
    Article.find(params[:id]).destroy
    redirect_to "/articles"
  end
end

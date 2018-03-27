class ArticlesController < ApplicationController
  def index
    @articles = Article.page(params[:page]).per(5)
    @categories = Category.all
  end

  def create
    Article.create title: params[:title], author: params[:author], content: params[:content], category_id: params[:category_id]
    redirect_to "/articles"
  end

  def show
    @categories = Category.all
    @this_article = Article.find(params[:id])
    @article_comments = Comment.where(article_id: params[:id])
  end

  def addComment
    Comment.create author: params[:author], content: params[:content], article_id: params[:id]
    redirect_to "/articles/#{params[:id]}"
  end

  def destroy
    Comment.where(article_id: params[:id]).destroy_all
    Article.find(params[:id]).destroy
    redirect_to "/articles"
  end
end

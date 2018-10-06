class ArticlesController < ApplicationController

  before_action :authenticate_user!

  def new
    @article = Article.new
  end

  def create
    #Article.create(article_params)
  end

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def vote
    article = Article.find(params[:id])
    if params[:type] == "like"
        article.likes += 1
        article.save
    elsif params[:type] == "dislike"
        article.dislikes += 1
        article.save
    end
    redirect_to article_path(id: article.id)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy!
    redirect_to articles_path
  end

  def article_params
    #[:name, :body]
  end
end

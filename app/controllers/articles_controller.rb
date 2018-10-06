class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    Article.create(article_params)
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
      if article.likes.nil?
        article.update_attribute(:likes, 1)
      else
        article.likes += 1
        article.save
      end
    elsif params[:type] == "dislike"
       params[:type] == "like"
       if article.dislikes.nil?
         article.update_attribute(:dislikes, 1)
       else
         article.dislikes += 1
         article.save
       end
    end
    redirect_to article_path(id: article.id)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy!
    redirect_to articles_path
  end

  def article_params
    [:name, :body]
  end
end

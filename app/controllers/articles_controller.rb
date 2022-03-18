class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    render json: @articles.map{ |article| { title: article.title, body: article.body.truncate(10) } }
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    
    if @article.save
      render json: @article
    else
      render json: @article.errors
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :user)
  end

end
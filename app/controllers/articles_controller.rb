class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @article.save
  end

  def update
    @article =Article.find(params[:id])
    @article.update(article_params)

    redirect_to article_path
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path, status: :see_other
  end

  def edit
    @article = Article.find(params[:id])
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end

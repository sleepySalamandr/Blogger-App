class ArticlesController < ApplicationController
  before_action :check_for_login

  def new
    @article = Article.new
  end

  def create
    article = Article.create article_params
      current_user.articles << article
      flash[:notice] = "Article created"
    redirect_to article_path(article.id)
  end

  def index
  end

  def show
    @article = Article.find params[:id]
    @comment = Comment.new(:article => @article)
  end

  def edit
    @article = Article.find params[:id]
  end

  def update
    article = Article.find params[:id]
    article.update article_params
    redirect_to article
  end

  def destroy
      article = Article.find params[:id]
        if (@current_user.id) == article.user_id
          article.comments.destroy_all
          article.destroy
        end
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :topic, :body, :image, :user_id)
  end
end

class PagesController < ApplicationController
  def home
    # @user = User.find params[:id]
    # @article = Article.all
    @user = current_user
  end

  def show
    @article = Article.find params[:id]
  end
end

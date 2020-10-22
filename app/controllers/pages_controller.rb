class PagesController < ApplicationController
  def home
    @user = current_user
  end

  def show
    @article = Article.find params[:id]
  end
end

class CommentsController < ApplicationController
  before_action :check_for_login, except: [:index]
  before_action :find_article!

  def index
    @comments = @article.comments.order(created_at: :desc)
  end

  def create
    @comment = @article.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      flash[:notice] = 'Comment was successfully created.'
    else
      flash[:notice] = "Error creating comment: #{@comment.errors}"
    end
    redirect_to(@comment.article)
  end

  def destroy
    @comment = @article.comments.find(params[:id])

    if @comment.user_id == @current_user_id
      @comment.destroy
    else
      flash[:notice] = "Comment not owned by user #{@comment.errors}"
   end
   redirect_to(@comment.article)
  end

private
  def find_article!
    @article = Article.find params[:article_id]
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end

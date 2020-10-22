class CommentsController < ApplicationController
  before_action :check_for_login, except: [:index]

  def index
    @comments = @article.comments.order(created_at: :desc)
  end

  def create
      @article = Article.find(params[:article_id])
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
      @article = Article.find params[:article_id]
      @comment = @article.comments.find(params[:id])
        if @comment.user_id == @current_user.id
          @comment.destroy
        else
          flash[:notice] = "Comment not owned by user"
        end
      redirect_to(@comment.article)
  end

private
  def comment_params
    params.require(:comment).permit(:body)
  end
end

class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @comments = Comment.all.order("updated_at DESC") 
  end

  def create
    @comment = Comment.new
    @comment.user_id = session[:user_id]
    @comment.content = params[:comment][:content]
    @comment.receiver_id = params[:comment][:receiver_id]
    @comment.category = params[:comment][:category]
    @comment.save!
    redirect_to root_url
  end

  def destroy

    redirect_to root_url
  end

  def new
    @comment = Comment.new
  end
end

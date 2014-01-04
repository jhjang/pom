class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @comments = Comment.all
  end

  def create
    @comment = Comment.new
    @comment.content = params[:comment][:content]
    @comment.save!
    redirect_to root_url
  end

  def new
    @comment = Comment.new
  end
end

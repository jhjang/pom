class CommentsController < ApplicationController
  def index
    @comment = Comment.new
    @comments = Comment.search(params[:id]).order("updated_at DESC") 
  end

  def create
    notice = "등록되었습니다."
    if session[:user_id].to_i == params[:comment][:receiver_id].to_i
      notice = "자화자찬은 금지입니다."
    else 
      @comment = Comment.new
      @comment.user_id = session[:user_id]
      @comment.content = params[:comment][:content]
      @comment.receiver_id = params[:comment][:receiver_id]
      @comment.category = params[:comment][:category]
      @comment.save!
    end
    redirect_to root_url, :notice => notice
  end

  def destroy

    redirect_to root_url
  end

  def new
    @comment = Comment.new
  end
end

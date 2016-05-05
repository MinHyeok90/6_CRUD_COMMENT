class BoardController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.new(title: params[:title], content: params[:content])
    @post.save
    redirect_to :back
  end

  def edit
  end

  def destroy
  end
  
  def comment_create
    @comment = Comment.new(content: params[:content], post_id: params[:post_id])
    @comment.save
    redirect_to :back
  end
end

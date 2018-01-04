class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.valid?
      @comment.save
      redirect_to comments_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :content)
  end

end

class ContactsController < ApplicationController

  def index
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save

      flash[:notice] = 'Comment was submitted'
      redirect_to 'contact_path'
    else
      render 'index'
    end

  end

  private

  def comment_params
    params.require(:comment).permit(:title, :message)
  end
end

class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = params[:user_id]
    @comment.save
    redirect_to :back
  end

    private
  	def comment_params
  		params.require(:comment).permit(:content, :user_id)
  	end

end

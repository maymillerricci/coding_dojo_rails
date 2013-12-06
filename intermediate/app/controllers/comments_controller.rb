class CommentsController < ApplicationController
  def index
     @comments = Comment.all
  end

  def new
    #if there's a product - if clicking on new comment link from product index under a specific product
    #gets product info from new comment link param
     if params[:product_id]
       @product = Product.find(params[:product_id])
       @comment = @product.comments.new
    #if there's no product - if click on generic new comment link from all comments page
     else
      @comment = Comment.new
     end
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      flash[:message] = "Your comment was successfully added."
      redirect_to products_path
    else
      # flash[:errors] = @product.errors.full_messages
      # redirect_to new_product_path
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:author, :content, :product_id)
    end

end

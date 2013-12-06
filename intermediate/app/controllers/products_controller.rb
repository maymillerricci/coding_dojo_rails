class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:message] = "The product was successfully added."
      redirect_to product_path(@product.id)
    else
      # flash[:errors] = @product.errors.full_messages
      # redirect_to new_product_path
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def show
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      flash[:message] = "The product info was successfully updated."
      redirect_to product_path(@product.id)
    else
      # flash[:errors] = @product.errors.full_messages
      # redirect_to edit_product_path(@product) 
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:message] = "The product was successfully deleted."
    redirect_to products_path
  end

  private
    def product_params
      params.require(:product).permit(:name, :description, :pricing, :category_id)
    end
end

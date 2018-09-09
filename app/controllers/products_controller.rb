class ProductsController < ApplicationController

  def index
    @products = Product.all
    @products_united = Product.search_united
    @products_usa = Product.search_usa
    @products_review = Product.most_reviews
    @products_recent = Product.three_most_recent
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      redirect_to  products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product successfully destroyed!"
    redirect_to products_path
  end

private
  def product_params
    params.require(:product).permit(:name, :country, :price)
  end

end

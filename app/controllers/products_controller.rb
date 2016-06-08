class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :destroy]

  def index
    render json: Product.all
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created
    else
      render json: { errors: @product.errors }, status: :unprocessable_entity
    end
  end

  def show
    render json: @product
  end

  def destroy
    @product.destroy
    render json: {}
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(
      *policy(@product || Product).permitted_attributes)
  end
end
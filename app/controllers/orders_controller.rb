class OrdersController < ApplicationController
  include OrdersDoc
  before_action :set_order, only: [:show, :update, :destroy]

  def index
    @orders = Order.ransack(query_params(Order)).
      result(distinct: true)

    puts "query_params: #{query_params(Order)}"
    paginate json: @orders
  end

  def show
    render json: @order
  end

  def create
    @order = Order.new(permitted_attributes(Order))
    if @order.save
      render json: @order, status: :created
    else
      render json: { errors: @order.errors } , status: :unprocessable_entity
    end
  end

  def update
    if @order.update(permitted_attributes(@order))
      render json: @order
    else
      render json: { errors: @order.errors } , status: :unprocessable_entity
    end
  end

  def destroy
    @order.destroy
    render json: {}
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end
end
class OrderItemsController < ApplicationController
  before_action :set_order_item, only: [:show]

  def show
    render json: @order_item
  end

  private

  def set_order_item
    @order_item = OrderItem.find(params[:id])
  end
end
class Orders < ApplicationController
  def index
    if customer_id
      @orders = Order.where(customer_id: params[:customer_id])
    else
      @orders = Order.all
    end

    render json: @orders
  end

  def create
  end

  def show
    @order = Order.where(order_id: params[:order_id])

    render json: @order
  end

  def ship
  end
end

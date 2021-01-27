class Api::OrdersController < ApplicationController

  def create
    @order = Order.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id
    )
    @order.subtotal = @order.quantity * @order.product.price
    @order.tax = @order.subtotal * 0.09
    @order.total = @order.subtotal + @order.tax
    if @order.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render "show.json.jb"    
  end

end

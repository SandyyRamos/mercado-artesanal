class OrdersController < ApplicationController
  def index
    @orders = order.all
    @user_orders = current_user.my_buys
  end

  def create
    @order = order.new(order_params)
    @order.user = current_user
    @product = Product.find(params[:order][:product_id])
    @order.total = @product.price * @order.quantity
    if @order.save
      redirect_to order_path(@order)
    else
      render 'products/show', status: :unprocessable_entity
    end
  end

  def my_orders
    @my_orders = order.where(user_id: current_user.id)
    #iterar array en la vista
  end

  def show
    @order = order.find(params[:id])
  end


  private
  def order_params
    params.require(:order).permit(:quantity, :order_date, :product_id)
  end

end

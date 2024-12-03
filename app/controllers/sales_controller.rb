class SalesController < ApplicationController
  def index
    @sales = Sale.all
  end

  def create
    @sale = Sale.new(sale_params)
    @sale.user = current_user
    @product = Product.find(params[:sale][:product_id])
    @sale.total = @product.price * @sale.quantity
    if @sale.save!
      redirect_to sale_path(@sale)
    else
      # render :show, status: :unprocessable_entity
    end
  end

  def show
    @sale = Sale.find(params[:id])
  end

  def my_sales
    @my_sales = Sale.where(user_id: current_user.id)
    #iterar array en la vista
  end

  private
  def sale_params
    params.require(:sale).permit(:quantity, :sale_date, :product_id)
  end

end

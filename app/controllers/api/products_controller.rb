class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    param_id = params[:id]
    @product = Product.find_by(id: param_id)
    render "show.json.jb"
  end

  # def any_product_action
  #   which = params[:item].to_i
  #   @product = Product.find_by(id: which)
  #   render "show_single_product.json.jb"
  # end
end

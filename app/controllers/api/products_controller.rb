class Api::ProductsController < ApplicationController
  def show_all
    @products = Product.all
    render "show_all_products.json.jb"
  end

  def show_single
    @products = Product.first
    render "show_single_product.json.jb"
  end
end

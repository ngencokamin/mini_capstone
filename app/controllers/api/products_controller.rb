class Api::ProductsController < ApplicationController
  def show_all
    @products = Product.all
    render "show_all_products.json.jb"
  end
end

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

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
    )
    @product.save
    render "show.json.jb"
  end

  def update
    param_id = params[:id]
    @product = Product.find_by(id: param_id)
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description = params[:description] || @product.description
    @product.save
    render "show.json.jb"
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Your product has now been obliterated."}
  end

  # def any_product_action
  #   which = params[:item].to_i
  #   @product = Product.find_by(id: which)
  #   render "show_single_product.json.jb"
  # end
end

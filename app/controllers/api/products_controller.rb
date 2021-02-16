class Api::ProductsController < ApplicationController
  
  before_action :authenticate_admin, except: [:index, :show]
  def index
    @products = Product.all
    if params[:category]
      category = Category.find_by("name = ?", params[:category])
      @products = category.products
    end
    # if params[:discount]
    #   @products = @products.where("price < ?", 10)
    # end

    # if params[:search]
    #   @products = @products.where("name iLIKE ? OR description iLIKE ?", "%#{params[:search]}%","%#{params[:search]}%")
    # end
    # if params[:sort] == "price"
    #   if params[:sort_order] == "desc"
    #     @products = @products.order(price: :desc)
    #   else
    #     @products = @products.order(:price)
    #   end
    # else
    #   @products = @products.order(:id)
    # end
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
      description: params[:description],
      supplier_id: params[:supplier_id],
      stock: params[:stock]
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    param_id = params[:id]
    @product = Product.find_by(id: param_id)
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.stock = params[:stock] || @product.stock
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Your product has now been obliterated."}
  end
  
end

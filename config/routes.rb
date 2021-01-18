Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    # get "/single_product" => "products#show_single"
    # get "/single_product_query" => "products#any_product_action"
    # get "/single_product_segment/:item" => "products#any_product_action"
  end
end

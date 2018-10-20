Rails.application.routes.draw do
  get "quotes/new"
  get "quotes/create"
  # get "products/index"
  get "/products", to: "products#index"
  get "products/:nsn/:part_number", to: "products#show"
  root "pages#index"
  get "/contact", to: "contacts#index"
  post "/contact", to: "contacts#create"
end

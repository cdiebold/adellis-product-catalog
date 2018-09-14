Rails.application.routes.draw do

  get 'products/index'
  get 'products', to: 'products#index'
  get 'products/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root'pages#index'
  get '/contact', to: 'contacts#index'
  post '/contact', to: 'contacts#create'
end

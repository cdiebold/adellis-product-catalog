Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contact', to: 'contacts#index'
  post '/contact', to: 'contacts#create'
end

Rails.application.routes.draw do
  
  devise_for :users
  resources 'pages'
  resources 'bookings'
  resources 'products'
  root "pages#home"
  get "/products/:id/buy", to: "pages#buy"
  get "/products/:id/rent", to: "pages#rent"
  # get "/products/:id/pay", to: "pages#pay"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

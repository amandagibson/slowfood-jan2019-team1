Rails.application.routes.draw do
  devise_for :models
  mount Cartify::Engine, at: '/'
  resources :products, only: [:show]
  devise_for :users
	root controller: :products, action: :index
end

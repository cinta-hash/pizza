Rails.application.routes.draw do
  resources :piza_restaurants, only: [:create]
  resources :restaurants, only: [:index, :show, :destroy]
  resources :pizas, only: [:index]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

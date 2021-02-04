Rails.application.routes.draw do
  get 'login_admistrador/signin'
  resources :administradors
  resources :reservas
  resources :clientes
  resources :veiculos
  resources :marcas
  root "veiculos#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

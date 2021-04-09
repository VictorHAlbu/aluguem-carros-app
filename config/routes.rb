Rails.application.routes.draw do 
  get 'administrador/login', to:'login_admistrador#login'
  post 'administrador/logar', to: 'login_admistrador#logar'
  get 'administrador/sair', to: 'login_admistrador#logout'
  resources :administradors
  resources :reservas, only: [:index, :show]
  resources :clientes
  resources :veiculos
  resources :marcas
  root "veiculos#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

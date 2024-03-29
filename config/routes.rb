Rails.application.routes.draw do 
  get 'usuarios_administrador/index'
  get 'login/sigin'
  get 'login/cadastrar'
  get 'login/', to: 'login#login'
  post 'logar', to: 'login#logar'
  get 'loja/index', to: 'loja#index'
  get '/loja/locacao/:id', to: 'loja#aluguel'
  get 'login/logout', to: 'login#logout'
  post '/alugar/:id', to: 'loja#alugar'
  get '/confirmacao_pagamento/:reserva_id', to: 'loja#confirmacao_pagamento'
  post 'finalizar_pagamento', to: 'loja#finalizar_pagamento'
  resources :usuarios, except: [:show, :index]
  get 'usuarios', to: 'usuarios_administrador#index'
  get 'administrador/login', to:'login_admistrador#login'
  post 'administrador/logar', to: 'login_admistrador#logar'
  get 'administrador/sair', to: 'login_admistrador#logout'
  resources :usuarios_administradors
  resources :administradors
  resources :reservas, only: [:index, :show]
  resources :clientes
  resources :veiculos
  resources :marcas
  root "loja#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

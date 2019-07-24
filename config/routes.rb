Rails.application.routes.draw do
  
 get '/password_reset/:tmp_token', to: 'password_reset#index'  
post '/password_reset/reset', to: 'password_reset#reset'  

  resources :juegos
  resources :tikets
  resources :resultados
  resources :perfiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  post '/users/password_reset', to: 'users#password_reset'
    
  get 'test', to: 'users#test'
  

  get '/users', to: 'usuariosver#index'
  get '/users/:id', to: 'usuariosver#show'
end

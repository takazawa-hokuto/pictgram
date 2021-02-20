Rails.application.routes.draw do
  root 'pages#index'
  get 'pages/help'
  get 'pages/link'
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end



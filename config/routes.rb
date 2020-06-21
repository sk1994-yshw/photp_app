Rails.application.routes.draw do
  
  
  root 'static_pages#home'
  get "/home" => "static_pages#home"
  get "/help" => "static_pages#help"
  get "/about" => "static_pages#about"
  get "/signup" =>  "users#new"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users do
    member do
      get :following, :followers
    end
  end
  
  resources :posts
  resources :relationships,       only: [:create, :destroy]
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", to: 'application#home'
  get '/credits', to: 'application#credits' 

  #get "/legos", to: 'legos#index'

  resources :legos, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end


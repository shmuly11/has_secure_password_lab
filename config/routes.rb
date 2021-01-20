Rails.application.routes.draw do
   
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  get '/homepage', to: 'users#home'
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

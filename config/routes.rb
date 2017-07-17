Rails.application.routes.draw do
  get 'sessions/new'

  get 'help', to: 'static_pages#help'
  get 'about', to: 'static_pages#about'
  get 'contact', to: 'static_pages#contact'
  get 'home', to: 'static_pages#home'

  get "signup",to:"users#new"

  resources :microposts
  resources :users do

  end


  get '/login',     to: 'sessions#new'
  post '/login',    to:'sessions#create'
  get  '/logout',  to:  'sessions#destroy'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end

Rails.application.routes.draw do
  resources :aktivni_pojistenis
  resources :pojistenecs
  resources :pojistenis
  #get 'home/index'
  root 'home#index'
  get 'home/info'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
